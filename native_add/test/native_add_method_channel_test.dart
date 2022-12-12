import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_add/native_add_method_channel.dart';

void main() {
  MethodChannelNativeAdd platform = MethodChannelNativeAdd();
  const MethodChannel channel = MethodChannel('native_add');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
