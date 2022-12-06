// Created by linkkader on 11/11/22

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/manager/notification_manager.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/achievement_screen.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/agenda.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/evaluation_screen.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/expert_screen.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/info_screen.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/logtime_screen.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/page/skill_screen.dart';
import 'package:intra_42/presentation/page/notification/notication_icon.dart';
import 'package:intra_42/presentation/utils_widgets/img.dart';
import '../../../../core/params/constants.dart';
import '../../../../core/params/dimens.dart';
import '../../../../data/locale_storage/locale_storage.dart';
import '../../../../data/locale_storage/storage_stream.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> with SingleTickerProviderStateMixin {
  var delegateProvider = StateProvider((ref) => false);
  var stateProvider = StateProvider((ref) => LocaleStorage().getMe);
  var bgStateProvider = StateProvider((ref) => kDefaultDashboardBg);
  late TabController _tabController;
  var currentCursusProvider = StateProvider((ref) => 0);

  Widget _selectCursus(){
    var allCursus = ref.watch(stateProvider)?.cursusUsers;
    if (allCursus == null) return const SizedBox.shrink();
    return Column(
      children: [
        Text(App.s.cursus, style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
        if (allCursus.length > 1)
          PopupMenuButton(
            itemBuilder: (context) {
              return List.generate(
                  allCursus.length,
                      (index){
                    var cursus = allCursus[index];
                    return PopupMenuItem(
                      value: index,
                      child: Row(
                        children: [
                          if (index == ref.read(currentCursusProvider)) Icon(Icons.check, color: App.colorScheme.secondary),
                          Text(cursus.cursus?.name ?? "", style: GoogleFonts.ptSans(fontSize: 24, color: App.colorScheme.secondary))
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          ref.read(currentCursusProvider.notifier).state = index;
                        });
                      }
                    );
                  });
            },
            child: Row(
              children: [
                Text(allCursus[ref.watch(currentCursusProvider)].cursus?.name ?? "", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down, color: App.colorScheme.secondary),
              ],
            ),
          )
        else
          Text(allCursus[0].cursus?.name ?? "", style: GoogleFonts.ptSans(fontSize: 24, color: App.colorScheme.secondary)),
      ],
    );
  }

  Widget _item(String key, String value){
    return Column(
      children: [
        Text(key, style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
        Text(value, style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
      ],
    );
  }

  String? _formatLevel(double? level)
  {
    if (level == null) return null;
    String str = "Level ";
    str += level.toInt().toString();
    double temp = level - level.toInt();
    if (temp > 0 && (temp * 100).round() != 0){
      str += " - ${(temp * 100).round()} %";
    }
    return str;
  }

  @override
  void initState() {
    StorageStream().me().listen((event) {
      ref.read(stateProvider.notifier).state = event?.toFreezed();
    });
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    var user = ref.watch(stateProvider);
    if (user == null) return const SizedBox.shrink();
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: ColorConstants.kBackgroundColor,
          ),
          child: Img(ref.watch(bgStateProvider.notifier).state),
        ),
        const Positioned.fill(child: ColoredBox(color: ColorConstants.kDashboardOverlay),),
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              notificationExecution(null);
            },
          ),
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  pinned: false,
                  expandedHeight: kDashboardExpandedHeight,
                  actions: const [
                    NotificationIcon()
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: SizedBox(
                                width: kDashboardAvatarSize,
                                height: kDashboardAvatarSize,
                                child: ClipOval(
                                  child: Img(user.imageUrl ?? user.image?.versions?.large ?? ""),
                                ),
                              ),
                            ),
                            Text(user.displayname ?? "", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                            Text(user.login ?? "", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                            Text(user.location ?? App.s.unavailable, style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                            Container(
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: ColorConstants.appBar,
                              ),
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    const SizedBox(width: 20,),
                                    _item(App.s.wallet, user.wallet?.toString() ?? "0"),
                                    const SizedBox(width: 20,),
                                    _item(App.s.evaluations_points, user.correctionPoint?.toString() ?? "0"),
                                    const SizedBox(width: 20,),
                                    _selectCursus(),
                                    const SizedBox(width: 20,),
                                    if (user.cursusUsers?.isNotEmpty == true) _item(App.s.grade, user.cursusUsers?[ref.watch(currentCursusProvider)!].grade ?? App.s.unavailable),
                                    const SizedBox(width: 20,),
                                  ],
                                ),
                              ),
                            ),
                            if (user.cursusUsers?.isNotEmpty == true) Text("${user.cursusUsers?[ref.watch(currentCursusProvider)].blackholedAt?.formattedBlackHole ?? ""} ${user.cursusUsers?[ref.watch(currentCursusProvider)].blackholedAt?.formattedBlackHole2 ?? ""}", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                            Container(
                              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                              width: double.infinity,
                              height: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                        child: LinearProgressIndicator(
                                          minHeight: 25,
                                          value: (user.cursusUsers![ref.watch(currentCursusProvider)].level! - user.cursusUsers![ref.read(currentCursusProvider)].level!.toInt()).toDouble(),
                                        )),
                                    Positioned.fill(
                                      top: 0,
                                      left: 0,
                                      bottom: 0,
                                      right: 0,
                                      child: Center(child: Text(_formatLevel(user.cursusUsers?[ref.watch(currentCursusProvider)].level) ?? "0", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _Delegate(
                    ref,delegateProvider,
                    child: ColoredBox(
                      color: ColorConstants.appBar,
                      child: TabBar(
                        controller: _tabController,
                        indicator: const _Indicator(6),
                        isScrollable: true,
                        labelStyle: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                        labelColor: App.colorScheme.secondary,
                        tabs: [
                          Tab(text: App.s.info.toUpperCase()),
                          Tab(text: App.s.evaluation.toUpperCase()),
                          Tab(text: App.s.agenda.toUpperCase()),
                          Tab(text: App.s.logtime.toUpperCase()),
                          Tab(text: App.s.expertises.toUpperCase()),
                          Tab(text: App.s.achievements.toUpperCase()),
                          Tab(text: App.s.skills.toUpperCase()),
                        ],
                      ),
                    ),
                    child2: ColoredBox(
                      color: ColorConstants.appBar,
                      child: AppBar(
                        backgroundColor: ColorConstants.appBar,
                      ),
                    ),

                  ),
                  pinned: true,
                  floating: true,
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                InfoScreen(user),
                const EvaluationScreen(),
                Agenda(user),
                LogTimeScreen(user.login!),
                ExpertiseScreen(user),
                AchievementScreen(user),
                SkillScreen(user, currentCursusProvider),
              ],
            ),
          )
        )
      ],
    );
  }
}

class _Indicator extends Decoration{

  final double radius;
  const _Indicator(this.radius);
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(radius);
  }

}

class _CustomPainter extends BoxPainter {
  final double radius;
  _CustomPainter(this.radius);


  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(offset.dx, configuration.size!.height - radius, configuration.size!.width, radius), topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
        Paint()..color = App.colorScheme.secondary);
  }
}



class _Delegate extends SliverPersistentHeaderDelegate{
  final Widget? child;
  final Widget? child2;
  final double minHeight;
  final double maxHeight;
  final WidgetRef ref;
  final StateProvider<bool> provider;
  const _Delegate(this.ref, this.provider, {this.child, this.minHeight = 46.0, this.maxHeight = 46.0, this.child2});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    App.log.i("shrinkOffset: $shrinkOffset");
    if (shrinkOffset > 0) {
      if (ref.read(provider) == false) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(provider.notifier).state = true;
        });
      }
      return Column(
        children: [
          if (ref.read(provider))SizedBox(height: maxHeight,child: child2,),
          SizedBox(height: maxHeight,child: child,)
        ],
      );
    } else {
      if (ref.read(provider) == true) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(provider.notifier).state = false;
        });
      }
      return SizedBox(height: maxHeight,child: child,);
    }
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => ref.watch(provider) ? maxHeight * 2 : maxHeight;

  @override
  double get minExtent => ref.watch(provider) ? maxHeight * 2 : maxHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}