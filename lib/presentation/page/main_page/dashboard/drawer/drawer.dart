// Created by linkkader on 8/12/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/data/repositories/auth_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/settings/open_source.dart';

import '../../../start_page.dart';

class MyDrawer extends StatelessWidget {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  const MyDrawer({Key? key}) : super(key: key);

  static void closeDrawer(){
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Material(
        color: App.colorScheme.background,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              Expanded(child: Container()),
              ListTile(
                title: Text("Open Sources Licence", style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary),),
                onTap: () {
                  const OpenSources().navigate(context: context);
                },
              ),
              ListTile(
                leading: Icon(Icons.language, color: App.colorScheme.secondary),
                title: Text(App.s.language, style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary),),
                onTap: () {
                  //todo add language selection
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: App.colorScheme.secondary),
                title: Text(App.s.logout, style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: App.colorScheme.secondary),),
                onTap: () async {
                  App.log.i("Logout");
                  if (await AuthRepository().signOut() == true){
                    const StartPage().navigate(context: App.context, clearStack: true);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
