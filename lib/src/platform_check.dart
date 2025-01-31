import 'platform_stub.dart'
    if (dart.library.io) 'platform_io.dart'
    if (dart.library.html) 'platform_web.dart';

/// Class to check the current platform, allowing compilation for Web, Mobile, and Desktop.
abstract class PlatformCheck {
  static bool get isWeb => currentPlatform == PlatformCheckType.Web;
  static bool get isAndroid => currentPlatform == PlatformCheckType.Android;
  static bool get isIOS => currentPlatform == PlatformCheckType.IOS;
}

/// Enum for platform types.
enum PlatformCheckType { Web, Android, IOS }
