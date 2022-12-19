// Created by linkkader on 14/11/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/main.dart';
import '../../../../../data/models/user.dart';


class SkillScreen extends ConsumerStatefulWidget {
  final User user;
  final StateProvider<int> provider;
  const SkillScreen(this.user, this.provider, {Key? key}) : super(key: key);

  @override
  ConsumerState<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends ConsumerState<SkillScreen> with AutomaticKeepAliveClientMixin{

  late User user;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (user.cursusUsers == null) return Container();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
          itemCount: user.cursusUsers![ref.watch(widget.provider)].skills!.length,
          itemBuilder: (_,index){
            return _Item(user.cursusUsers![ref.watch(widget.provider)].skills![index]);
          }),
    );
  }

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  @override
  bool get wantKeepAlive => true;
}


class _Item extends StatelessWidget {
  final Skill skill;
  const _Item(this.skill,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child:  Column(
          children: [
            Text(skill.name!, style : GoogleFonts.ptSans(fontSize: 20, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
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
                          value: (skill.level! / 21),
                        )),
                    Positioned.fill(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Center(child: Text("${skill.level?.toStringAsFixed(2)}/21", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}