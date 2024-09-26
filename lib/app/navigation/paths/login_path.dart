import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/forgot_password_path.dart';
import 'package:uniqtrack/app/navigation/paths/register_path.dart';

class LoginPath extends Path<LoginPath> {
  LoginPath(Path path) : super('login', parent: path);

  RegisterPath get register => RegisterPath(this);

  ForgotPasswordPath get forgotPassword => ForgotPasswordPath(this);
}
