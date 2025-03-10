import 'platform_check.dart';

//Default to web, the platform_io class will override this if it gets imported.
PlatformCheckType get currentPlatform => PlatformCheckType.Web;

class PlatformCheck {
  static bool get isAndroid => false;
  static bool get isIOS => false;
  static bool get isWeb => true;
}
