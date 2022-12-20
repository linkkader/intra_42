
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intra_42/main.dart';

class RetryButton extends StatelessWidget {
  final Function() onTap;
  const RetryButton({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: SizedBox(
        width: 56,
        height: 56,
        child: IconButton(
          onPressed: () {
            onTap();
            App.log.i("RetryButton pressed");
          },
          padding: const EdgeInsets.all(0),
          iconSize: 56,
          tooltip: 'Retry',
          color: App.colorScheme.background,
          icon: Icon(
            Icons.refresh,
            color: App.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
