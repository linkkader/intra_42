import 'package:flutter_test/flutter_test.dart';
import 'package:native_add/native_add.dart';
import 'package:native_add/native_add_platform_interface.dart';
import 'package:native_add/native_add_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeAddPlatform
    with MockPlatformInterfaceMixin
    implements NativeAddPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeAddPlatform initialPlatform = NativeAddPlatform.instance;

  test('$MethodChannelNativeAdd is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeAdd>());
  });

  test('getPlatformVersion', () async {
    NativeAdd nativeAddPlugin = NativeAdd();
    MockNativeAddPlatform fakePlatform = MockNativeAddPlatform();
    NativeAddPlatform.instance = fakePlatform;

    expect(await nativeAddPlugin.getPlatformVersion(), '42');
  });
}
