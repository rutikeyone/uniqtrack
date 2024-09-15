import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/arguments/args.dart';
import 'package:uniqtrack/app/navigation/paths/login_path.dart';

class ForgotPasswordPath extends Path<ForgotPasswordPath> {
  ForgotPasswordPath(LoginPath path) : super('forgot_password', parent: path);

  Map<String, String> queryParameters({
    required ForgotPasswordArgs args,
    required ForgotPasswordArgsConverter converter,
  }) {
    return converter.toJson(args);
  }

  ForgotPasswordArgs? arguments({
    required Map<String, String> queryParameters,
    required ForgotPasswordArgsConverter converter,
  }) {
    return converter.fromJson(queryParameters);
  }
}
