// Created by linkkader on 4/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/project_repository.dart';

import '../../../core/utils/pair.dart';
import '../../../main.dart';

class ProjectPage extends ConsumerStatefulWidget {

  final User user;
  final int projectId;
  const ProjectPage(this.user, this.projectId, {Key? key}) : super(key: key);

  @override
  ConsumerState<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends ConsumerState<ProjectPage> {

  late FutureProvider<Pair<Project, ProjectsUser>> data;


  @override
  void initState() {
    data = FutureProvider((ref) => ref.read(ProjectRepository().futureProvider).projectFull(widget.user.id!, widget.projectId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(data).when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: App.colorScheme.secondary,),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(data.first.name ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                FittedBox(
                  child: Row(
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        );
        return Container();
      },
      loading: () => const CupertinoActivityIndicator(),
      error: (e, s) => Text(e.toString()),
    );
  }
}
