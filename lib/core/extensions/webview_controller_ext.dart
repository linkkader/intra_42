

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:intra_42/main.dart';

extension WebViewViewControllerExt on InAppWebViewController {
  Future loading() async {
    int i = 0;
    await Future.delayed(const Duration(milliseconds: 100));
    while (await isLoading()) {
      if (i > 60 * 10) {
        throw Exception("Timeout");
      }
      App.log.wtf("Loading... ($i)");
      await Future.delayed(const Duration(milliseconds: 100));
      i++;
    }

  }
}