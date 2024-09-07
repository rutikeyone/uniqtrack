import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/login_path.dart';

class ForgotPasswordPath extends Path<ForgotPasswordPath> {
  final emailArgument = "email";

  ForgotPasswordPath(LoginPath path) : super('forgot_password', parent: path);

  Map<String, String> queryEmail(String email) {
    return {emailArgument: email};
  }
}
