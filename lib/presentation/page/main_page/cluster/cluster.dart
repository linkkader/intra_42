
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/map_ext.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/manager/user_manager.dart';
import 'package:intra_42/data/repositories/cluster_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/cluster/drawer.dart';
import 'dart:ui' as ui;
import '../../../../core/utils/pair.dart';
import '../../../../data/manager/image_manager.dart';
import '../../../../data/models/cluster_item.dart';
import 'cluster_item.dart';

class Cluster extends ConsumerStatefulWidget {
  const Cluster({Key? key}) : super(key: key);

  @override
  ConsumerState<Cluster> createState() => _ClusterState();
}

class _ClusterState extends ConsumerState<Cluster> with TickerProviderStateMixin{


  //Map<Pair<e1, https://cdn.intra.42.fr/cluster/image/36/bg_e1.svg>, Map<e2r9p9, ClusterItem>>
  late StateProvider<Map<Pair<String, String>, Map<String, ClusterItem>>> dataProvider = StateProvider((ref) => {});
  late FutureProvider<Map<Pair<String, String>, Map<String, ClusterItem>>> futureProvider ;
  final StateProvider<Map<String, ui.Image>> imagesProvider = StateProvider((ref) => {});
  StateProvider<int> currentTab = StateProvider((ref) => 0);
  StateProvider<Map<String, int>> stateClusterSize = StateProvider((ref) => {});
  StateProvider<List<ClusterItem>> clusterItemsState = StateProvider((ref) => []);
  TabController? _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key


  @override
  void initState() {
    super.initState();

    futureProvider = FutureProvider((ref) async{
      var data =  await ref.read(ClusterRepository().futureProvider).clusterItems();
      ref.read(dataProvider.notifier).state = data;

      //fetch all clusters students images
      var lstImg = List.generate(data.values.first.length, (index) =>  data.values.first.values.elementAt(index).cdnUri);
      ImageManager().fetchAllImage(lstImg, (images) {
        ref.read(imagesProvider.notifier).state = images;
      });
      return data;
    });

    //todo: remove this
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
  Widget build(BuildContext context) {
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
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: ColorConstants.kStatusBarColor,
              title: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: List.generate(data.length, (index) => Text(data.keys.elementAt(index).first,),),
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
            body: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(data.length, (index) {
                return ClusterItemScreen(data.keys.elementAt(index).second, data.values.elementAt(index), imagesProvider,
                  onClusterSize: (_){
                    ref.read(stateClusterSize)[data.keys.elementAt(index).first] = _;
                    ref.read(stateClusterSize.notifier).state = ref.read(stateClusterSize).copy;
                  },);
              },),
            ),
          );
        },
        error: (_, __){
          return Container();
        },
        loading: () => const CircularProgressIndicator()
    );
  }
}
