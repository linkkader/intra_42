
import 'dart:ffi';

import 'native_add_platform_interface.dart';

final DynamicLibrary nativeAddLib = DynamicLibrary.process();

final int Function(int x, int y) nativeAdd = nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>('native_add')
    .asFunction();

class NativeAdd {
  Future<String?> getPlatformVersion() {
    return NativeAddPlatform.instance.getPlatformVersion();
  }
}
