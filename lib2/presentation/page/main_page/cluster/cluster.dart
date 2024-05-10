
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/map_ext.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/manager/user_manager.dart';
import 'package:intra_42/data/repositories/cluster_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/cluster/drawer.dart';
import 'package:intra_42/presentation/utils_widgets/retry_btn.dart';
import 'dart:ui' as ui;
import '../../../../core/utils/pair.dart';
import '../../../../data/api/web_socket/web_manager.dart';
import '../../../../data/manager/image_manager.dart';
import '../../../../data/models/cluster_item.dart';
import 'cluster_item.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class Cluster extends ConsumerStatefulWidget {
  const Cluster({Key? key}) : super(key: key);

  @override
  ConsumerState<Cluster> createState() => _ClusterState();
}

class _ClusterState extends ConsumerState<Cluster> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  //Map<Pair<e1, https://cdn.intra.42.fr/cluster/image/36/bg_e1.svg>, Map<e2r9p9, ClusterItem>>
  late StateProvider<Map<Pair<String, String>, Map<String, ClusterItem>>> dataProvider = StateProvider((ref) => {});
  late FutureProvider<Map<Pair<String, String>, Map<String, ClusterItem>>> futureProvider ;
  final StateProvider<Map<String, ui.Image>> imagesProvider = StateProvider((ref) => {});
  StateProvider<int> currentTab = StateProvider((ref) => 0);
  StateProvider<Map<String, int>> stateClusterSize = StateProvider((ref) => {});
  StateProvider<List<ClusterItem>> clusterItemsState = StateProvider((ref) => []);
  TabController? _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  void connectCable(){
    ClusterRepository().cable((item, img, user){
      var data = ref.read(dataProvider);
      ref.read(clusterItemsState).add(item);
      ref.read(clusterItemsState.notifier).state = List.from(ref.read(clusterItemsState));
      for (var element in data.values) {
        if (item.campusId == user.campus?.first.id)
        {
          if (item.host != null)
          {
            if (img == null){
              element.remove(item.host!);
            }
            else{
              element[item.host!] = item;
            }
          }
        }
      }
      var all = ref.read(imagesProvider);
      if (img != null)all[item.cdnUri!] = img;
      ref.read(imagesProvider.notifier).state = all;
      ref.read(dataProvider.notifier).state = data.copy;
    });
  }

  @override
  void initState() {
    futureProvider = FutureProvider((ref) async{
      var data =  await ref.read(ClusterRepository().futureProvider).clusterItems();
      ref.read(dataProvider.notifier).state = data;
      var lstImg = List.generate(data.values.first.length, (index) =>  data.values.first.values.elementAt(index).cdnUri);
      ImageManager().fetchAllImage(lstImg, (images) {
        ref.read(imagesProvider.notifier).state = images;
      });
      return data;
    });
    connectCable();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ref.watch(futureProvider).when(
        data: (_){
          var data = ref.watch(dataProvider);
          Map<String, int> map = {};
          _.forEach((key, value) {
            map[key.first] = value.keys.where((element) => element.contains(key.first)).length;
          });
          _tabController ??= TabController(length: data.length, vsync: this);
          UserManger().updateUserFromCluster(data);
          return Scaffold(
            key: _key,
            drawer: ClusterDrawer(clusterItemsState, stateClusterSize,map),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                WebSocketManager().restart();
                connectCable();
                ref.refresh(futureProvider);
              },
              backgroundColor: App.colorScheme.background,
              child: Icon(Icons.refresh,color: App.colorScheme.secondary,),
            ),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: ColorConstants.kStatusBarColor,
              title: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                onTap: (index) {
                  ref.read(currentTab.notifier).state = index;
                },
                tabs: List.generate(data.length, (index) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(data.keys.elementAt(index).first, style: GoogleFonts.ptSans(fontWeight: FontWeight.bold,))),
                ),
              ),
              actions: [
                MaterialButton(
                  shape: const CircleBorder(),
                  child: Icon(Icons.more_vert, color: App.colorScheme.secondary,),
                  onPressed: () {
                    _key.currentState!.openDrawer();
                  },
                )
              ],
            ),
            body: Consumer(
              builder: (context, ref, child) {
                return IndexedStack(
                  index: ref.watch(currentTab),
                  children: List.generate(data.length, (index) {
                    return ClusterItemScreen(data.keys.elementAt(index).second, data.values.elementAt(index), imagesProvider,
                      onClusterSize: (_){
                        ref.read(stateClusterSize)[data.keys.elementAt(index).first] = _;
                        ref.read(stateClusterSize.notifier).state = ref.read(stateClusterSize).copy;
                      },);
                  },),
                );
              },
            ),
          );
        },
        error: (_, __){
          return Center(
            child: RetryButton(onTap: () {
              ref.refresh(futureProvider);
            },),
          );
        },
        loading: () => Center(
          child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
        ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
