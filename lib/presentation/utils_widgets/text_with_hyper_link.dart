

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/pair.dart';

class TextWithHyperLink extends StatefulWidget {
  final Text text;
  final Color? linkColor;
  const TextWithHyperLink(this.text ,{this.linkColor, Key? key}) : super(key: key);

  @override
  State<TextWithHyperLink> createState() => _TextWithHyperLinkState();
}

class _TextWithHyperLinkState extends State<TextWithHyperLink> {
  
  List<Pair<String, bool>> splits = [];
  
  @override
  void initState() {
    var str = widget.text.data;
    if (str != null)
    {
      while (str!.contains("http"))
      {
        var link = "http${str.substringAfter("http").substringBefore(" ").substringBefore("\n")}";
        splits.add(Pair(str.substringBefore("http"), false));
        splits.add(Pair(link, true));
        str = str.substringAfter(link);
      }
      if (str.isNotEmpty) splits.add(Pair(str, false));
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          for (var element in splits)
            TextSpan(
              text: element.first,
              style: widget.text.style?.copyWith(color: element.second ? widget.linkColor ?? widget.text.style?.color : widget.text.style?.color),
              recognizer: element.second ? (TapGestureRecognizer()..onTap = () async {
                if (await canLaunchUrl(Uri.parse(element.first))) {
                  launchUrl(Uri.parse(element.first), mode: LaunchMode.externalApplication);
                }
              }): null,
            )
        ]
      ),
    );
  }
}
