// Created by linkkader on 14/11/2022


import 'dart:async';
import 'package:linkkader/blachhole/core/extensions/date_time_ext.dart';
import 'package:linkkader/blachhole/data/models/user_2.dart';

import 'data/api/client.dart' as client;
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkkader/blachhole/core/extensions/string_ext.dart';
import 'package:linkkader/blachhole/data/models/user.dart';
import 'package:linkkader/blachhole/data/repositories/user_repository.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:touchable/touchable.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:ui' as ui;
import '../worker.dart';
import 'black_hole_painter.dart';
import 'core/utils/pair.dart';
import 'data/locale_storage/locale_storage.dart';
import 'data/manager/image_manager.dart';

class BlackHoleScreen extends ConsumerStatefulWidget {
  const BlackHoleScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<BlackHoleScreen> createState() => _ClusterState();
}

class _ClusterState extends ConsumerState<BlackHoleScreen> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  List<User2>? users = [];
  final StateProvider<Map<String, ui.Image>> stateProvider = StateProvider((ref) => {});
  late FutureProvider<Map<int, List<User2>>> futureProvider;
  late AnimationController controller;
  Map<String, double> angles = {};
  final StateProvider<bool> longPress = StateProvider((ref) => false);
  List<String> campusNames = [];
  final StateProvider<int> selected = StateProvider((ref) => 0);
  List<String> imagesUrls = [];
  final viewTransformationController = TransformationController();


  @override
  void initState() {
    futureProvider = FutureProvider((ref) async{
      await _init();
      var now = DateTime.now();
      var currentCampus = "any";
      List<String> imgs = [];
      if (users?.isNotEmpty == false){
        users = await UserRepository().users(
          onFinish: (_) {
            campusNames = _;
            campusNames.sort(
              (a, b) {
                if (a == "Benguerir") return -1;
                if (b == "any") return 1;
                return a.compareTo(b);
              },
            );
          },
        );
      }
      if (campusNames.isNotEmpty){
        currentCampus = campusNames[ref.watch(selected)];
      }
      Map<int, List<User2>> lst = {};
      for (var user in users!) {
        if (user.campusName != currentCampus) continue;
        var date = user.bhDate;
        var weeks = date.difference(now).inDays ~/ 7;
        if (weeks < 0) {
          continue;
        }
        if (date.difference(now).inDays < 0) {
          continue;
        }
        while (lst.length < weeks + 1) {
          lst[lst.length] = [];
        }
        imgs.add(user.img);
        lst[weeks]!.add(user);
        // var user = users.firstWhere((element) => element?.id == blackHole.id, orElse: () => null);
      }
      ImageManager().fetchAllImage(circle: true,imgs, (images) {
        // images.addAll(ref.read(stateProvider));
        ref.read(stateProvider.notifier).state.addAll(images);

      });

      // onImages(imgs)


      // var lst =  await ref.read(UserRepository().futureProvider).allBlackHoles(
      //     onImages: (lst) {
      //       for (var element in lst) {
      //         if (imagesUrls.contains(element)){
      //           lst.remove(element);
      //         }
      //       }
      //       ImageManager().fetchAllImage(circle: true,lst, (images) {
      //         images.addAll(ref.read(stateProvider));
      //         ref.watch(stateProvider.notifier).state = images;
      //       });
      //     },
      //   onFinish: (_) {
      //       campusNames = _;
      //     }
      // );
      return lst;
    });
    controller = AnimationController(vsync: this, duration: const Duration(minutes: 5));
    controller.repeat();

    const zoomFactor = 3.0;
    const xTranslate = BlackHolePainter.dx * 2;
    const yTranslate = BlackHolePainter.dx * 2;
    viewTransformationController.value.setEntry(0, 0, zoomFactor);
    viewTransformationController.value.setEntry(1, 1, zoomFactor);
    viewTransformationController.value.setEntry(2, 2, zoomFactor);
    viewTransformationController.value.setEntry(0, 3, -xTranslate);
    viewTransformationController.value.setEntry(1, 3, -yTranslate);
    super.initState();
  }

  var isInit = false;
  Future<void> _init() async {
    if (isInit) return;

    isInit = true;
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                colors: [
                  Color(0xFF002534),Color(0xFF090a0f)
                ]
            )
        ),
        child: ref.watch(futureProvider)
            .when(
          error: (_, __){
            print("error $_");
            return Center(child: Text('Error ${_.toString()}'),);
          },
          loading: (){
            return Center(child: LoadingAnimationWidget.prograssiveDots(color: const Color(0xFF00babc), size: 100));
          },
          data: (data){
            return Stack(
              children: [
                Scaffold(
                  body: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        gradient: RadialGradient(
                            colors: [
                              Color(0xFF002534),Color(0xFF090a0f)
                            ]
                        )
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: InteractiveViewer(
                        panEnabled: true,
                        transformationController: viewTransformationController,
                        boundaryMargin: const EdgeInsets.all(10000),
                        maxScale: 100,
                        minScale: 0.1,
                        scaleEnabled: true,
                        child: Stack(
                          children: [
                            Positioned.fill(
                                top: 0,
                                left: 0,
                                child: ExtendedImage.asset("assets/img/blackhole2.gif", height: 2000, width: 2000,)
                            ),
                            AnimatedBuilder(
                              animation: controller,
                              builder: (context, child) {
                                return GestureDetector(
                                  onLongPress: (){
                                    ref.read(longPress.notifier).state = !ref.read(longPress);
                                  },
                                  onLongPressCancel: (){

                                  },
                                  child: CanvasTouchDetector(
                                    gesturesToOverride: const [GestureType.onTapUp],
                                    builder: (context) {
                                      return CustomPaint(
                                          size:  const Size(BlackHolePainter.dx * 2, BlackHolePainter.dy * 2),
                                          painter: BlackHolePainter(data, context, ref.watch(stateProvider), (controller.value * 360).toInt(), angles,ref.read(longPress))
                                      );
                                    },
                                  ),
                                );
                              },)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Text("last update ${LocaleStorage.dateTime("last")?.format("MMMMEEEEd")}\n long click ${ref.watch(longPress) ? "unpause" : "pause"}", style: GoogleFonts.ptSans(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.black),)
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: ColoredBox(
                      color: Colors.black,
                      child: PopupMenuButton(
                        color: Colors.black,
                        child: Text(
                          campusNames[ref.watch(selected)],
                          style: GoogleFonts.ptSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                                onTap: (){

                                },
                                child: SizedBox(
                                  width: 200,
                                  height: 200,
                                  child: ListView(
                                    children: List.generate(campusNames.length, (index) {
                                      return PopupMenuItem(
                                        child: Row(children: [
                                          index == ref.read(selected) ? const Icon(Icons.check, color: Colors.white,) : Container(),
                                          Expanded(child: Text(campusNames[index], style: GoogleFonts.ptSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,)),
                                        ],),
                                        onTap: (){
                                          ref.watch(selected.notifier).state = index;
                                        },
                                      );
                                    }),
                                  ),
                                )
                            )
                          ];
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    iconSize: 70,
                    icon: Center(
                      child: SvgPicture.asset("assets/img/github.svg", height: 300, width: 300),
                    ),
                    onPressed: (){
                      launchUrlString("https://github.com/linkkader/Intra_42");
                    },
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}