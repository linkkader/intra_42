import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Refresh extends StatelessWidget {
  final Widget child;
  final Future Function() onRefresh;
  const Refresh({required this.child, required this.onRefresh, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: onRefresh,
        backgroundColor: App.colorScheme.background,
        color: App.colorScheme.secondary,
        child: child
    );
  }
}
