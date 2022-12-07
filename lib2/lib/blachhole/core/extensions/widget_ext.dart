
import 'package:flutter/material.dart';

extension WidgetExtension on Widget{
  //make it async
  Future navigate({required BuildContext context, bool replace = false, bool clearStack = false}) async {
    if (replace) {
      return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => this));
    } else if (clearStack) {
      return Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => this), (route) => false);
    } else {
      return Navigator.of(context).push(MaterialPageRoute(builder: (context) => this));
    }
  }

  //pop
  void pop({required BuildContext context}) {
    Navigator.of(context).pop();
  }
}