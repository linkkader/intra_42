// Created by linkkader on 18/11/2022


import 'dart:math';

extension DoubleExt on double {
  double get toRadians => this * (pi / 180);
  double get toDegrees => this * (180 / pi);
}