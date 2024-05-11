// Created by linkkader on 3/10/2022

import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoolNotifier extends StateNotifier<bool> {
  BoolNotifier(bool initialValue) : super(initialValue);
  bool get value => state;
  void toggle() {
    state = !state;
  }
  void set(bool value) {
    state = value;
  }
}