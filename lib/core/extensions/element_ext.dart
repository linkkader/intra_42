// Created by linkkader on 14/11/2022

import 'package:html/dom.dart';
import 'package:html/parser.dart';

extension ElementExt on Element {
  String attr(String attr) => attributes[attr] ?? '';
}