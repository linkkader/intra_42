// Created by linkkader on 4/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/project_repository.dart';

import '../../../core/utils/pair.dart';

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

        return Container();
      },
      loading: () => const CupertinoActivityIndicator(),
      error: (e, s) => Text(e.toString()),
    );
  }
}
