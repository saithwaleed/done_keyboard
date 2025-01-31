import 'platform_check.dart';

/// Default platform behavior when neither Web nor Mobile-specific implementation is available.
PlatformCheckType get currentPlatform => PlatformCheckType.Web;

class PlatformCheck {
  static bool get isWeb => false;
  static bool get isAndroid => false;
  static bool get isIOS => false;
}
