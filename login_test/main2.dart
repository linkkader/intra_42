// Created by linkkader on 8/11/2022

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:html/parser.dart';
import 'package:logger/logger.dart';
import 'package:intra_42/core/log/log_filter.dart';
import 'package:intra_42/generated/l10n.dart';
import 'package:intra_42/l10n/l10n.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class App extends StatelessWidget {

  static final Logger _logger = Logger(filter: LoggerFilter(), printer: PrettyPrinter());

  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        navigatorKey: NavigationService.navigatorKey,
        supportedLocales: L10n.all,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        home: const WebView()
    );
  }

}

class WebView extends StatefulWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late InAppWebViewController controller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var html = await controller.getHtml();
          var doc = parse(html);
          var post = Uint8List.fromList(utf8.encode("username=acouliba&password=&credentialId="));
          var url = doc.querySelector("form")?.attributes["action"];
          controller.postUrl(url: Uri.parse(url!), postData: post);
          print(url);
        },
        child: const Icon(Icons.add),
      ),
      body: InAppWebView(
        initialOptions: InAppWebViewGroupOptions(

        ),
        initialUrlRequest: URLRequest(url: Uri.parse("https://signin.intra.42.fr/users/sign_in")),
        onWebViewCreated: (InAppWebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
