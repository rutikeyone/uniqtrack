import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/features/navigation/paths/login_path.dart';

class RegisterPath extends Path<RegisterPath> {
  RegisterPath(LoginPath loginPath) : super('register', parent: loginPath);
}