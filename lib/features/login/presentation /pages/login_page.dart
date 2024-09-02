import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/login_header_text_widget.dart';

part '../widgets/login_password_text_field_widget.dart';

part '../widgets/login_email_text_field_widget.dart';

part '../widgets/login_button.dart';

part '../widgets/register_button.dart';

class LoginPage extends ConsumerWidget {
  final VoidCallback navigateToRegisterPage;

  const LoginPage({
    required this.navigateToRegisterPage,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppDiments.dm75,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
              bottom: AppDiments.dm20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _LoginHeaderTextWidget(),
                const _LoginEmailTextFieldWidget(),
                const _LoginPasswordTextFieldWidget(),
                const _LoginButton(),
                _RegisterButton(
                  navigateToRegisterPage: navigateToRegisterPage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
