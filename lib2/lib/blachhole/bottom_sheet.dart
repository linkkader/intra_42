

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkkader/blachhole/img.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'core/extensions/date_time_ext.dart';
import 'core/params/dimens.dart';
import 'data/models/user.dart';
import 'data/models/user_2.dart';

class UserBottomSheet extends StatefulWidget {
  final User2 user;
  final String? login;
  const UserBottomSheet(this.user, {this.login, Key? key}) : super(key: key);

  @override
  State<UserBottomSheet> createState() => _UserSheetState();

  static show(User2 user ,{required BuildContext context, String? login}) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => UserBottomSheet(user, login: login),
    );
  }
}

class _UserSheetState extends State<UserBottomSheet> {
  late User2 user;

  @override
  void initState() {
    user = widget.user;
    super.initState();
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
            color: const Color(0xFF00babc),
            child: Row(
              children: [
                const SizedBox(width: 16,),
                SizedBox(
                  height: kBlackHoleBottomImgSize,
                  width: kBlackHoleBottomImgSize,
                  child: InkWell(
                    onTap: (){
                      launchUrlString("https://profile.intra.42.fr/users/${user.login}");
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(200)),
                      child:  Img(user.img,),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Expanded(
                    child: Column(
                      children: [
                        Text(
                          user.name ?? "",
                          style: GoogleFonts.ptSansNarrow(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          user.login ?? "",
                          style: GoogleFonts.ptSansNarrow(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                         user.bhDate.formattedBlackHole,
                          style: GoogleFonts.ptSansNarrow(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            user.bhDate.formattedBlackHole2,
                          style: GoogleFonts.ptSansNarrow(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                ),
                const SizedBox(width: 16,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

