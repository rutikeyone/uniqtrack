import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/features/forgot_password/presentation/forgot_password_page.dart';
import 'package:uniqtrack/features/login/presentation%20/pages/login_page.dart';
import 'package:uniqtrack/features/register/presentation/register_page.dart';
import 'package:uniqtrack/navigation/paths/app_paths.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: AppPaths.login.goRoute,
    routes: [
      GoRoute(
        path: AppPaths.login.goRoute,
        builder: (context, state) {
          return const LoginPage();
        },
        routes: [
          GoRoute(
            path: AppPaths.login.register.goRoute,
            builder: (context, state) {
              return const RegisterPage();
            },
          ),
          GoRoute(
            path: AppPaths.login.forgotPassword.goRoute,
            builder: (context, state) {
              return const ForgotPasswordPage();
            },
          ),
        ],
      )
    ],
  );
}
