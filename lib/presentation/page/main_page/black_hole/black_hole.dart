// Created by linkkader on 14/11/2022


import 'dart:async';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/manager/black_hole_manager.dart';
import 'package:intra_42/data/manager/image_manager.dart';
import 'package:intra_42/data/models_izar/black_hole.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:touchable/touchable.dart';
import 'dart:ui' as ui;
import '../../../../core/utils/pair.dart';
import '../../../../data/repositories/black_hole_repository.dart';
import 'black_hole_painter.dart';

class BlackHoleScreen extends ConsumerStatefulWidget {
  const BlackHoleScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<BlackHoleScreen> createState() => _ClusterState();
}

class _ClusterState extends ConsumerState<BlackHoleScreen> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  final StateProvider<Map<String, ui.Image>> stateProvider = StateProvider((ref) => {});
  late FutureProvider<List<Pair<int, Map<UserIsar, BlackHoleIsar>>>> futureProvider;
  late AnimationController controller;
  Map<int, double> angles = {};
  final StateProvider<bool> longPress = StateProvider((ref) => false);
  List<String> imagesUrls = [];
  final viewTransformationController = TransformationController();


  @override
  void initState() {
    futureProvider = FutureProvider((ref) {
      return ref.read(BlackHoleRepository().futureProvider).allBlackHoles(
          onImages: (lst) {
            for (var element in lst) {
             if (imagesUrls.contains(element)){
               lst.remove(element);
             }
            }
            ImageManager().fetchAllImage(circle: true,lst, (images) {
              images.addAll(ref.read(stateProvider));
              ref.watch(stateProvider.notifier).state = images;
            });
          }
      );
    });
    controller = AnimationController(vsync: this, duration: const Duration(minutes: 5));
    controller.repeat();


    BlackHoleManager().fetchCampusAllUser(21,
      onFinish:  () {
      BlackHoleManager().fetchAllBlackHole(onFinish: (){
        App.log.i("All black holes fetched");
        angles = {};
        ref.refresh(futureProvider);
      });
    },);


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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ref.watch(futureProvider)
        .when(
        error: (_, __){
          return const Center(child: Text('Error'));
          },
        loading: (){
          return Center(child: InkWell(
            child: const CircularProgressIndicator(), onTap: (){
              ref.refresh(futureProvider);
          },));
        },
      data: (data){
          return  Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                // BlackHoleManager().fetchAllBlackHole();
                  // BlackHoleManager().fetchAllBlackHole(onFinish: (){
                  //   App.log.i("All black holes fetched");
                  //   angles = {};
                  //   ref.refresh(futureProvider);
                  // });
                // BlackHoleManager().fetchCampusAllUser(21,
                //   onFinish:  () {
                //
                //   },);
             },
              child: const Icon(Icons.refresh),
            ),
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
                  maxScale: 1000,
                  scaleFactor: 1,
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
          );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}