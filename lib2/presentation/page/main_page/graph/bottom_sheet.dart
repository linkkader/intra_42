
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/main.dart';
import 'dart:developer';

import '../../../../data/models/project_data.dart';
import '../../../../data/models/user.dart';
import '../../project_page/project_page.dart';

class BottomSheetProject extends StatelessWidget {
  final ProjectData data;
  final User user;
  const BottomSheetProject(this.data, this.user, {Key? key}) : super(key: key);
  Widget stateWidget(){
    Text(
      data.name ?? "",
      style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
    );
    if (data.finalMark != null) {
      return Container(
        decoration: BoxDecoration(
            color: data.state == "fail" ? App.colorScheme.tertiary : ColorConstants.quaternary,
            borderRadius: const BorderRadius.all(Radius.circular(2))
        ),
        padding: const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
        child: Text(
          data.finalMark.toString() ,
          style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
        ),
      );
    }
    if (data.state == "unavailable"){
      return Container(
        decoration:  BoxDecoration(
            color:  App.colorScheme.tertiary,
            borderRadius: const BorderRadius.all(Radius.circular(2))
        ),
        padding: const EdgeInsets.all(3),
        child: Text(
          data.state.toString(),
          style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(child: GestureDetector(
            onTap: () => Navigator.pop(context),
          )),
          ColoredBox(
            color: App.colorScheme.primary,
            child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => ProjectPage(user, data).navigate(context: context),
                          child: Text(
                            data.name ?? "",
                            style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        stateWidget()
                      ],
                    ),
                    if (data.duration != null)Text(
                      data.duration ?? "",
                      style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                    ),
                    if (data.description != null)Text(
                      data.description ?? "",
                      style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                    ),
                    if (data.state == "unavailable" && data.rules != null)
                      Text(
                        data.rules!,
                        style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}