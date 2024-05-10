// Created by linkkader on 14/11/2022

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/params/constants.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/utils_widgets/img.dart';
import '../../../../../data/models/user.dart';


class AchievementScreen extends StatefulWidget {
  final User user;
  const AchievementScreen(this.user, {Key? key}) : super(key: key);

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> with AutomaticKeepAliveClientMixin{

  late User user;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
          itemCount: user.achievements!.length,
          itemBuilder: (_,index){
            return _Item(user.achievements!.elementAt(index));
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
  final Achievement achievement;
  const _Item(this.achievement,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Row(
        children: [
          const SizedBox(width: 5,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(achievement.name ?? "", style: GoogleFonts.ptSans(fontSize: 16, fontWeight: FontWeight.bold, color: App.colorScheme.secondary),),
              Text(achievement.description ??  "", style: GoogleFonts.ptSans(fontSize: 16, fontWeight: FontWeight.bold, color: App.colorScheme.secondary)),
            ],
          )),
          if (achievement.image != null)Container(
            padding: const EdgeInsets.all(10),
            width: 70,
            height: 70,
            child: Img(kApiBaseUrl2 + achievement.image!),
          ),
        ],
      ),
    );
  }
}