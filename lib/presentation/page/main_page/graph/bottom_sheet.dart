
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/main.dart';
import 'dart:developer';

import '../../../../data/models/project_data.dart';
import '../../../../data/models/user.dart';

class BottomSheetProject extends StatelessWidget {
  final ProjectData data;
  final User user;
  const BottomSheetProject(this.data, this.user, {Key? key}) : super(key: key);
  Widget state(){
    if (data.finalMark != null) {
      return Container(
        decoration: BoxDecoration(
            color: data.state == "fail" ? App.colorScheme.tertiary : ColorConstants.quaternary,
            borderRadius: const BorderRadius.all(Radius.circular(2))
        ),
        padding: const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
        child: Text(
          data.finalMark.toString()
        ),
      );
    }
    if (data.state == "unavailable"){
      return Container(
        decoration:const  BoxDecoration(
            color:  Color(0xFFcc6256),
            borderRadius: BorderRadius.all(Radius.circular(2))
        ),
        padding: const EdgeInsets.all(3),
        child: Text(
            data.state.toString()
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: InkWell(
              onTap: (){

              },
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        )),
        ColoredBox(
          color: const Color(0xFF1b242a),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Text(data.name!),
                      onTap: (){
                        log(data.toString());
                        // Get.to(() => ProjectScreen(data.project_id!, user));
                      },
                    ),
                  ),
                  state()
                ],
              ),
              const SizedBox(height: 10,),
              if (data.duration != null) Text(data.duration!),
              const SizedBox(height: 10,),
              if (data.description != null) Text(data.description!),
              const SizedBox(height: 5,),
              if (data.state == "unavailable" && data.rules != null) Text(data.rules!),
              const SizedBox(height: 20,),
            ],
          ),
        )
      ],
    );
  }
}
