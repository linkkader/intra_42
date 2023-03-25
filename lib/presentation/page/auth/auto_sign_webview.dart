
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart';

class AutoSignWebView extends ConsumerStatefulWidget {
  final void Function(InAppWebViewController controller)? onWebViewCreated;
  const AutoSignWebView({this.onWebViewCreated, Key? key}) : super(key: key);

  @override
  ConsumerState<AutoSignWebView> createState() => _WebViewState();

  static Future<bool> loading() async {
    _WebViewState._completer = Completer<bool>();
    return _WebViewState._completer.future;
  }

  static InAppWebViewController get controller => _WebViewState.controller;

}

class _WebViewState extends ConsumerState<AutoSignWebView> {
  static late InAppWebViewController controller;
  static late Completer<bool> _completer;
  @override
  void initState() {
    super.initState();
  }

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
        // initialUrlRequest: URLRequest(url: Uri.parse("https://signin.intra.42.fr/users/sign_in")),
        onWebViewCreated: (InAppWebViewController controller) {
          _WebViewState.controller = controller;
          widget.onWebViewCreated?.call(controller);
        },
        onLoadStart: (InAppWebViewController controller, Uri? url) {

        },
        onLoadStop: (InAppWebViewController controller, Uri? url) async {
          if (!_completer.isCompleted){
            _completer.complete(true);
          }
        },
        onLoadError: (InAppWebViewController controller, Uri? url, int code, String message) {
          _completer.completeError(message);
        },
      ),
    );
  }
}
