// Created by linkkader on 9/11/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/main.dart';
import '../../../core/params/constants.dart';

class SignInPage extends StatefulWidget {
  final Function(String code, BuildContext context)? onCodeIntercepted;
  const
  SignInPage({this.onCodeIntercepted, Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  @override
  void initState() {
    App.log.i('endpoints: $kSignInEndpoint');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: kSignInEndpoint.uri),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
        ),
      ),
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        if (navigationAction.request.url.toString().startsWith(kRedirectUrl) == true){
          if (navigationAction.request.url?.queryParameters['code'] != null) {
            widget.onCodeIntercepted?.call(navigationAction.request.url!.queryParameters['code']!, context);
          }
        }
        return NavigationActionPolicy.ALLOW;
      },
    );
  }
}
