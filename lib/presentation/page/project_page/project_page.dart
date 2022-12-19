// Created by linkkader on 4/12/2022
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/models/project_data.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/project_repository.dart';
import 'package:intra_42/presentation/page/bottom_sheet.dart';
import 'package:intra_42/presentation/utils_widgets/img.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../core/params/colors.dart';
import '../../../core/utils/pair.dart';
import '../../../data/models/scale_team.dart';
import '../../../data/repositories/scale_repository.dart';
import '../../../main.dart';

class ProjectPage extends ConsumerStatefulWidget {

  final User user;
  final ProjectData data;
  const ProjectPage(this.user, this.data, {Key? key}) : super(key: key);

  @override
  ConsumerState<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends ConsumerState<ProjectPage> {

  late FutureProvider<Pair<Project, ProjectsUser?>> data;


  @override
  void initState() {
    data = FutureProvider((ref) => ref.read(ProjectRepository().futureProvider).projectFull(widget.user.id!, widget.data.projectId!));
    super.initState();
  }

  Widget sessionInfo1(Project project) {
    var projectSession = project.projectSessions?.isNotEmpty ?? false ? project.projectSessions!.last : null;
    var str = projectSession?.solo == true ? App.s.solo : App.s.group;
    str += " - ";
    str += projectSession?.estimateTime ?? "0";
    str += " - ";
    str += projectSession?.difficulty.toString() ?? "";
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(str, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
          //todo: add list skills
        ],
      ),
    );
  }

  Widget sessionInfo2(Project project) {
    var projectSession = project.projectSessions?.isNotEmpty ?? false ? project.projectSessions!.last : null;
    var str = projectSession?.solo == true ? App.s.solo : App.s.group;
    str += " - ";
    str += projectSession?.estimateTime ?? "0";
    str += " - ";
    str += projectSession?.difficulty.toString() ?? "";
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          if (widget.data.description != "")Text(App.s.description, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
          if (widget.data.description != "")Text(widget.data.description ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
          //todo: add list skills
        ],
      ),
    );
  }

  Widget finalMark(ProjectsUser? projectsUser, Project project)
  {
    App.log.i(widget.data);
    App.log.i(projectsUser);
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(10),
      color: widget.data.state == "available" ? App.colorScheme.primary : widget.data.state == "done" ? ColorConstants.quaternary : App.colorScheme.tertiary,
      child: widget.data.state == "done"
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check, color: App.colorScheme.secondary),
              Text(App.s.success, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 5),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: projectsUser?.finalMark?.toString() ?? "0", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 40)),
                  TextSpan(text: "/100", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                ]
              )
          )
        ],
      ) :
      widget.data.state == "fail"
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.close, color: App.colorScheme.secondary),
              Text(App.s.fail, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 5),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: projectsUser?.finalMark?.toString() ?? "0", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 40)),
                  TextSpan(text: "/100", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                ]
              )
          )
        ],
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.data.state == "available" ? App.s.allowed : App.s.forbidden, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Icon(Icons.check, color: App.colorScheme.secondary),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [
                Color(0xFF002534),Color(0xFF090a0f)
              ]
          )
      ),
      child: ref.watch(data).when(
        data: (data) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: App.colorScheme.secondary,),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text("${data.first.name ?? ""}  ${widget.user.login}", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  finalMark(data.second, data.first),
                  sessionInfo1(data.first),
                  if (data.second != null)PeerEvaluation(data.second!),
                  sessionInfo2(data.first),
                ],
              ),
            ),
          );
        },
        loading: () => Center(
          child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
        ),
        error: (e, s) => Material(child: Center(child: Text(e.toString()))),
      ),
    );
  }
}

class PeerEvaluation extends ConsumerStatefulWidget {
  final ProjectsUser projectUser;
  const PeerEvaluation(this.projectUser, {Key? key}) : super(key: key);

  @override
  ConsumerState<PeerEvaluation> createState() => _PeerEvaluationState();
}

class _PeerEvaluationState extends ConsumerState<PeerEvaluation> {

  late FutureProvider<Map<int, List<ScaleTeam>>> scales;

  @override
  void initState() {
    scales = FutureProvider((ref) {
     var lst = widget.projectUser.teams?.map((e) => e.id!).toList() ?? [];
     App.log.i(lst);
     return ref.read(ScaleRepository().futureProvider).projectScale(lst);
    });
    super.initState();
  }

  Map<int, StateProvider<bool>> expandedMapProvider = {};


  Widget mark(int value) {
    return Text(value.toString(), style: GoogleFonts.ptSans(color: value < 60 ? App.colorScheme.tertiary : ColorConstants.quaternary, fontWeight: FontWeight.bold, ));
  }

  ExpansionPanel item(Team team, List<ScaleTeam> scales) {

    scales.sort((a, b) => a.createdAt!.compareTo(b.createdAt!) > 0 ? -1 : 1);
    // return ExpansionPanel(headerBuilder: (context, isExpanded) => Container(), body: Container());

    expandedMapProvider[team.id!] ??= StateProvider((ref) => false);
    return ExpansionPanel(
        headerBuilder: (context, isExpanded) {
          return InkWell(
            child: Row(
              children: [
                const SizedBox(width: 10,),
                Text(team.name ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold)),
                const Spacer(),
                mark(team.finalMark ?? 0),
                const SizedBox(width: 10,),
              ],
            ),
            onTap: () => ref.read(expandedMapProvider[team.id!]!.notifier).state = !ref.read(expandedMapProvider[team.id!]!),
          );
        },
        backgroundColor: Colors.transparent,
        canTapOnHeader: true,
        isExpanded: ref.watch(expandedMapProvider[team.id!]!),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(scales.length, (index) {
                  List<Corrector> correcteds = [];
                  try{
                    for(var element in scales[index].correcteds!){
                      correcteds.add(Corrector.fromJson(element));
                    }
                  }catch(_){
                    App.log.e("error $_");
                  }
                  if (scales[index].comment == null || scales[index].comment!.isEmpty || scales[index].feedback == null || scales[index].feedback.toString().isEmpty) return Container();
                  return Column(
                    children: [
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              child: Builder(builder: (context) {
                                return InkWell(
                                  onTap: () => UserBottomSheet.show(null, login: scales[index].corrector?.login ?? "",context: context),
                                  child: Img.login(scales[index].corrector?.login ?? ""),
                                );
                              },),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  RichText(text: TextSpan(
                                      children: [
                                        TextSpan(text: "${App.s.evaluated_by} ", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                                        TextSpan(text: scales[index].corrector?.login, style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold,), recognizer: TapGestureRecognizer()..onTap = () => UserBottomSheet.show(null, login: scales[index].corrector?.login ?? "",context: context)),
                                        TextSpan(text: " ", style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold)),
                                        TextSpan(text: scales[index].createdAt?.timeAgo, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                                      ]
                                  )),
                                  const Spacer(),
                                  mark(scales[index].finalMark ?? 0),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Text(scales[index].comment ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary.withOpacity(0.75), fontWeight: FontWeight.bold, fontSize: 11)),
                              const SizedBox(height: 2),
                              RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: correcteds.isNotEmpty == true ? correcteds.first.login : null, style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold,),
                                        recognizer: TapGestureRecognizer()..onTap = () => UserBottomSheet.show(null, login: correcteds.isNotEmpty == true ? correcteds.first.login : null, context: context)),
                                    TextSpan(text: App.s.s_feedback, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                                    TextSpan(text: scales[index].createdAt?.timeAgo, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
                                  ]
                              )),
                              const SizedBox(height: 2),
                              Text(scales[index].feedback?.toString() ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary.withOpacity(0.75), fontWeight: FontWeight.bold, fontSize: 11),),
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  );
                }),
              )
            ],
          ),
        ));
  }
  
  @override
  Widget build(BuildContext context) {
    return ref.watch(scales).when(
      data: (data) {
        return ExpansionPanelList(
          elevation: 0,
          expandedHeaderPadding: const EdgeInsets.all(0),
          children: List.generate(widget.projectUser.teams?.length ?? 0, (index) {
            //reverse
            index = widget.projectUser.teams!.length - index - 1;
            return item(widget.projectUser.teams![index], data[widget.projectUser.teams![index].id!] ?? []);
          }),
        );
      },
      loading: () => Center(
        child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
      ),
      error: (e, s) => Text(e.toString()),
    );
  }
}
