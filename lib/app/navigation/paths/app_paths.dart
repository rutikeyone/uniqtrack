import 'package:uniqtrack/app/navigation/paths/community_path.dart';
import 'package:uniqtrack/app/navigation/paths/login_path.dart';
import 'package:uniqtrack/app/navigation/paths/profile_path.dart';
import 'package:uniqtrack/app/navigation/paths/splash_path.dart';

class AppPaths {
  static LoginPath get login => LoginPath();

  static CommunityPath get community => CommunityPath();

  static SplashPath get splash => SplashPath();

  static ProfilePath get profile => ProfilePath();
}
