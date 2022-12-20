// Created by linkkader on 14/11/2022


import 'dart:async';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/manager/black_hole_manager.dart';
import 'package:intra_42/data/manager/image_manager.dart';
import 'package:intra_42/data/models/user_2.dart';
import 'package:intra_42/data/models_izar/black_hole.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/utils_widgets/retry_btn.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sprintf/sprintf.dart';
import 'package:touchable/touchable.dart';
import 'dart:ui' as ui;
import '../../../../core/params/colors.dart';
import '../../../../core/utils/pair.dart';
import '../../../../data/locale_storage/storage_stream.dart';
import '../../../../data/repositories/black_hole_repository.dart';
import 'black_hole_painter.dart';

class BlackHoleScreen extends ConsumerStatefulWidget {
  const BlackHoleScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<BlackHoleScreen> createState() => _ClusterState();
}

//AutomaticKeepAliveClientMixin
class _ClusterState extends ConsumerState<BlackHoleScreen> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  List<String> _campusNames = [];
  final StateProvider<int> campusSelect = StateProvider((ref) => 0);
  final StateProvider<int> userCountProvider = StateProvider((ref) => LocaleStorage().allUsers().length);
  final StateProvider<Map<String, ui.Image>> stateProvider = StateProvider((ref) => {});
  late FutureProvider<List<Pair<int, List<User2>>>> futureProvider;
  late AnimationController controller;
  Map<String, double> angles = {};
  final StateProvider<bool> longPress = StateProvider((ref) => false);
  List<String> imagesUrls = [];
  final viewTransformationController = TransformationController();

  Widget _campusSelect(){
    return InkWell(
      child: SizedBox(
        height: kToolbarHeight * 2,
        child: PopupMenuButton(
            color: ColorConstants.kStatusBarColor,
            child: Row(
              children: [
                Text( _campusNames[ref.watch(campusSelect)] , style: GoogleFonts.ptSans(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                _campusNames.length > 1 ? const Icon(Icons.arrow_drop_down, color: Colors.white,) : Container(),
              ],
            ),
            itemBuilder: (_){
              return List.generate(_campusNames.length, (index){
                return PopupMenuItem(
                  child: ColoredBox(
                    color: App.colorScheme.background,
                    child: Row(children: [
                      index == ref.read(campusSelect) ? const Icon(Icons.check, color: Colors.white,) : Container(),
                      Expanded(child: Text(_campusNames[index], style: GoogleFonts.ptSans(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold))),
                    ],),
                  ),
                  onTap: (){
                    ref.watch(campusSelect.notifier).state = index;
                    futureProvider = FutureProvider((ref) {
                      return ref.read(BlackHoleRepository().futureProvider).allBlackHoles(_campusNames.isNotEmpty ? _campusNames[ref.watch(campusSelect)] : "1337 Benguerir/Morocco",
                          onCampusName: (lst) {
                            _campusNames = lst;
                          },
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

                  },
                );
              });
            }),
      ),
    );
  }


  @override
  void initState() {

    controller = AnimationController(vsync: this, duration: const Duration(minutes: 5));
    controller.repeat();

    var me = LocaleStorage().getMe;
    var campusName = "1337 Benguerir/Morocco";
    try{
      campusName = "${me!.campus!.first.website!.urlName} ${me.campus!.first.name}/${me.campus!.first.country}";
      App.log.i("campusName: $campusName");
    }catch(_){}

    futureProvider = FutureProvider((ref) {
      return ref.read(BlackHoleRepository().futureProvider).allBlackHoles(campusName,
          onCampusName: (lst) {
            _campusNames = lst;
          },
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
          return RetryButton(onTap: () => ref.refresh(futureProvider),);
          },
        loading: (){
          return Center(
            child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
          );
        },
      data: (data){
          return Scaffold(
            backgroundColor: Colors.transparent,
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
              child: Stack(
                children: [
                  Positioned.fill(child: FittedBox(
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
                  )),
                  Positioned(right: 0, top: 0, child: _campusSelect(),),
                ],
              ),
            ),
          );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}