
import 'package:flutter/material.dart';
import '../../main.dart';

extension WidgetExtension on Widget{
  //make it async
  Future navigate({BuildContext? context, bool replace = false, bool clearStack = false}) async {
    context ??= App.context;
    if (replace) {
      return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => this));
    } else if (clearStack) {
      return Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => this), (route) => false);
    } else {
      return Navigator.of(context).push(MaterialPageRoute(builder: (context) => this));
    }
  }

  //pop
  void pop({BuildContext? context}) {
    context ??= App.context;
    Navigator.of(context).pop();
  }
}