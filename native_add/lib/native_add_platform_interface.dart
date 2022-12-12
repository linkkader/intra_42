import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_add_method_channel.dart';

abstract class NativeAddPlatform extends PlatformInterface {
  /// Constructs a NativeAddPlatform.
  NativeAddPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeAddPlatform _instance = MethodChannelNativeAdd();

  /// The default instance of [NativeAddPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeAdd].
  static NativeAddPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeAddPlatform] when
  /// they register themselves.
  static set instance(NativeAddPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
