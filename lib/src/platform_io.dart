import 'platform_check.dart';
import 'dart:io';

/// Returns the current platform type.
PlatformCheckType get currentPlatform {
  if (Platform.isIOS) return PlatformCheckType.IOS;
  if (Platform.isAndroid) return PlatformCheckType.Android;
  return PlatformCheckType.Web;
}

class PlatformCheck {
  static bool get isWeb => false;
  static bool get isAndroid => Platform.isAndroid;
  static bool get isIOS => Platform.isIOS;
}
