import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/navigation/paths/login_path.dart';

class ForgotPasswordPath extends Path<ForgotPasswordPath> {
  ForgotPasswordPath(LoginPath loginPath)
      : super('forgot_password', parent: loginPath);
}
