
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intra_42/main.dart';

class RetryButton extends StatelessWidget {
  final Function() onTap;
  const RetryButton({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap.call(),
      padding: const EdgeInsets.all(0),
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(1000)),
      ),
      color: App.colorScheme.background,
      child: Icon(
        Icons.refresh,
        color: App.colorScheme.secondary,
      ),
    );
  }
}
