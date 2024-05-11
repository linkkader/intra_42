// Created by linkkader on 13/11/2022

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/main.dart';
import 'package:sprintf/sprintf.dart';
import 'package:flutter/material.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';

class InfoScreen extends StatefulWidget {
  final User user;
  const InfoScreen(this.user, {Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with AutomaticKeepAliveClientMixin {

  Widget _item(Icon icon, String text, GestureTapCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Row(
          children: [
            const SizedBox(width: 40,),
            icon,
            const SizedBox(width: 10,),
            Text(text, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontSize: 16, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: ColorConstants.kDashboardOverlay,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.user.phone != null)
            _item(Icon(Icons.phone, color: App.colorScheme.secondary,), widget.user.phone!, () {

            }),
          if (widget.user.email != null)
            _item(Icon(Icons.email, color: App.colorScheme.secondary), widget.user.email!, () {

            }),
          if (widget.user.dataErasureDate != null)
            _item(Icon(Icons.phonelink_erase_sharp, color: App.colorScheme.secondary,), widget.user.dataErasureDate!.format("yyyy-mm-dd"), () {

            }),
          if (widget.user.campus?.isNotEmpty == true && widget.user.campus!.first.usersCount != null)
            _item(Icon(Icons.group, color: App.colorScheme.secondary,), sprintf(App.s.count_students, [widget.user.campus!.first.usersCount!]), () {

            }),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
