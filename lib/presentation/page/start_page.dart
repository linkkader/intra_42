// Created by linkkader on 11/9/22

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/core/params/app_icons_svg.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/locale_storage/storage_stream.dart';
import 'package:intra_42/data/repositories/auth_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/black_hole/black_hole.dart';
import 'package:intra_42/presentation/page/main_page/main_page.dart';
import 'package:intra_42/presentation/page/settings/api_settings.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'auth/sign_in_page_web.dart';

class StartPage extends ConsumerStatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  ConsumerState<StartPage> createState() => _StartPageState();
}

class _StartPageState extends ConsumerState<StartPage> {

  late StreamSubscription sub;
  var loadingProvider = StateProvider((ref) => true);

  @override
  void initState() {
    AuthRepository().isUserLoggedIn().then((value) {
      if (value){
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          const MainPage().navigate(context: context, clearStack: true);
        });
      }
      ref.watch(loadingProvider.notifier).state = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(70.0),
                child: SvgPicture.asset(AppSvg.logo, height: double.infinity, width: double.infinity,),
              )),
              Row(
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      if (ref.watch(loadingProvider)) {
                        return Row(
                          children: [
                            const SizedBox(width: 20),
                            CircularProgressIndicator(color: App.colorScheme.secondary,)
                          ],
                        );
                      }
                      return MaterialButton(
                        onPressed: () async {
                          ref.read(loadingProvider.notifier).state = true;
                          bool isCode = false;
                          await SignInPage(
                            onCodeIntercepted: (code, context) async {
                              isCode = true;
                              AuthRepository().validateCode(code)
                                  .then((value) {
                                isCode = true;
                                if (value) {
                                  const MainPage().navigate(context: this.context, clearStack: true);
                                }
                                ref.watch(loadingProvider.notifier).state = false;
                              }).catchError((e) {
                                App.log.e(e);
                                ref.watch(loadingProvider.notifier).state = false;
                              });
                              Navigator.pop(context);
                              ref.watch(loadingProvider.notifier).state = true;
                            },
                          ).navigate(context: context);
                          ref.read(loadingProvider.notifier).state = isCode;
                        },
                        child: Text(
                          App.s.sign_in,
                          style: GoogleFonts.openSans(color: App.colorScheme.secondary, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  MaterialButton(
                    onPressed: (){
                      const ApiSettings().navigate(context: context);
                    },
                    child: Text(
                      App.s.api_settings,
                      style: GoogleFonts.openSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  MaterialButton(
                    onPressed: (){
                      launchUrlString("https://github.com/linkkader/Intra_42", mode: LaunchMode.externalApplication);
                    },
                    child: Text(
                      App.s.github,
                      style: GoogleFonts.openSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  MaterialButton(
                    onPressed: (){
                      const BlackHoleScreen().navigate(context: context);
                    },
                    child: Text(
                      App.s.black_hole,
                      style: GoogleFonts.openSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
