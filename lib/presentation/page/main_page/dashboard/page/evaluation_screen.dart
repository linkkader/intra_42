// Created by linkkader on 13/11/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/models/scale_team.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/utils_widgets/retry_btn.dart';
import '../../../../../data/repositories/user_repository.dart';

class EvaluationScreen extends ConsumerStatefulWidget {
  const EvaluationScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<EvaluationScreen> createState() => _EvaluationScreenState();
}

class _EvaluationScreenState extends ConsumerState<EvaluationScreen> with AutomaticKeepAliveClientMixin{

  FutureProvider<List<ScaleTeam>> provider = FutureProvider((ref) async {
    return ref.read(UserRepository().futureProvider).scales();
  });

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ref.watch(provider).when(
          data: (data){
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, index){
                return _Item(data[index]);
              },
            );
          },
          error: (error, stack){
            App.log.e(error, stack);
            return RetryButton(onTap: () => ref.refresh(provider),);
          },
          loading: () => const LinearProgressIndicator(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Item extends StatelessWidget {
  final ScaleTeam scale;
  const _Item(this.scale, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
