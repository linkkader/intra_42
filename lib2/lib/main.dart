import 'dart:html';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isolated_worker/js_isolated_worker.dart';
import 'package:linkkader/blachhole/black_hole.dart';
import 'package:linkkader/blachhole/core/extensions/widget_ext.dart';
import 'package:linkkader/blachhole/data/api/client.dart' as cl;
import 'package:linkkader/blachhole/img.dart';
import 'package:linkkader/worker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_strategy/url_strategy.dart';
import 'dart:html' as html;
import 'blachhole/data/locale_storage/locale_storage.dart';

void main() async{
  setPathUrlStrategy();
  WorkerManager().init();
  await LocaleStorage().init();
  cl.Client().initApi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/blackhole': (context) => const BlackHoleScreen(),
        },
        title: 'linkkader',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

String bullet = "\u2022 ";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFd94354),
            Color(0xFFa72e63)
            //Colors.red,
            //Colors.blue
          ]
          )
      ),
      child: Scaffold(
        floatingActionButton: !kDebugMode ? null : FloatingActionButton(
          onPressed: () async{
            print("kader");

            // if(html.Worker.supported) {
            //   // var myWorker = Worker('worker.js');
            //   // myWorker.onMessage.listen((event) {
            //   //   print("new event");
            //   //   print(event.data);
            //   // });
            //   var data = await Client().byteImg("https://cdn.intra.42.fr/users/43cb54a519c75efaf81dd607b2b89990/small_nforay.jpg");
            //   // myWorker.postMessage(["crop", data!]);
            //   var img = await WorkerManager().cropImage(data!);
            //   print(img);
            // }

            // print(data);
            const BlackHoleScreen().navigate(context: context);
          },
        ),
        backgroundColor: Colors.transparent,
        body: true ? ExtendedImage.network("https://i.giphy.com/media/dUkXrsOjtr5iC9HUcW/giphy.gif", fit: BoxFit.contain, width: double.infinity, height: double.infinity,)
         : SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                  child: Img("https://raw.githubusercontent.com/linkkader/myWaifu/master/acouliba.jpeg"),
                ),
              ),
              const SizedBox(height: 20,),
              Text("Abdoul Kader Coulibaly", style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              Text("Flutter Developper Android and Ios", style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              Container(
                margin: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                    color: Color(0xFF1e1d34),
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child:  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Center(child: Text("Contact me", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), )),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: MaterialButton(
                          focusColor: Colors.red,
                          hoverColor: Colors.red,
                          padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20, top: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          onPressed: () {
                            launchUrl(Uri.parse("https://www.linkedin.com/in/linkkader/"));
                          },
                          child: Center(child: Text("Linkedin", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: MaterialButton(
                          focusColor: Colors.red,
                          hoverColor: Colors.red,
                          padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20, top: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          onPressed: () {
                            launchUrl(Uri.parse("mailto:linkkader14@gmail.com"));
                          },
                          child: Center(child: Text("Email", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: MaterialButton(
                          focusColor: Colors.red,
                          hoverColor: Colors.red,
                          padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20, top: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          onPressed: () {
                            launchUrl(Uri.parse("https://github.com/linkkader/"));
                          },
                          child: Center(child: Text("Github", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: MaterialButton(
                          focusColor: Colors.red,
                          hoverColor: Colors.red,
                          padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20, top: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          onPressed: () {
                            launchUrl(Uri.parse("https://rebrand.ly/linkkaderdiscord"));
                          },
                          child: Center(child: Text("Discord", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ]
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                    color: Color(0xFF1e1d34),
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child:  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text("Some Projects", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Item(name: "zanime", demo: "https://www.youtube.com/shorts/54zMWkIrIVQ", github: "https://github.com/linkkader/zanime", googlePlay: "https://rebrand.ly/zanime", ios: "https://zanime.app", website: "https://zanime.app",),
                      const Item(name: "Assistive Touch", googlePlay: "https://www.amazon.com/Assistive-Navigation-Screenshot-recorder-Rotation/dp/B0853CQD8W", demo: "https://www.youtube.com/watch?v=f1vVD1N8iYk&ab_channel=Linkkader",),
                      const Item(name: "MyWaifuList", googlePlay: "https://m.apkpure.com/fr/25000-waifus-wallpapers-full-hd-mywaifulist/com.linkkader.mywaifulist/download",),
                      const SizedBox(
                        height: 40,
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    WorkerManager().init();
    LocaleStorage().init().then((value) {
      cl.Client().initApi();
    }).onError((error, stackTrace) {
      print(error);
    });
    super.initState();


  }
}

class Item extends StatelessWidget {
  final String name;
  final String? github;
  final String? googlePlay;
  final String? appStore;
  final String? demo;
  final String? ios;
  final String? website;
  const Item({Key? key, required this.name, this.github, this.googlePlay, this.appStore, this.demo, this.ios, this.website}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          children: [
            MaterialButton(
                color: Colors.transparent,
                elevation: 0,
                focusElevation: 0,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                textColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                disabledColor: Colors.transparent,
                child: Text("$bullet $name", style: GoogleFonts.ptSans(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: (){

                }
            ),
            const SizedBox(width: 5),
            if (github != null)const SizedBox(width: 4),
            if (github != null)MaterialButton(
              child: Text("github", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(github!));
              },),
            if (googlePlay != null)const SizedBox(width: 4),
            if (googlePlay != null)MaterialButton(
              child: Text("google play", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(googlePlay!));
              },),
            if (appStore != null)const SizedBox(width: 4),
            if (appStore != null)MaterialButton(
              child: Text("app store", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(appStore!));
              },),
            if (demo != null)const SizedBox(width: 4),
            if (demo != null)MaterialButton(
              child: Text("demo", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(demo!));
              },),
            if (ios != null)const SizedBox(width: 4),
            if (ios != null)MaterialButton(
              child: Text("ios", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(ios!));
              },),
            if (website != null)const SizedBox(width: 4),
            if (website != null)MaterialButton(
              child: Text("website", style: GoogleFonts.ptSans(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {
                launchUrl(Uri.parse(website!));
              },),
          ],
        ),
      ),
    );
  }
}
