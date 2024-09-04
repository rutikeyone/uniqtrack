import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/navigation/providers/login_nav_callback_store_provider.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/login_header_text_widget.dart';

part '../widgets/login_password_text_field_widget.dart';

part '../widgets/login_email_text_field_widget.dart';

part '../widgets/login_button.dart';

part '../widgets/register_button.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: AppDiments.dm75,
              left: AppDiments.dm16,
              right: AppDiments.dm16,
              bottom: AppDiments.dm20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LoginHeaderTextWidget(),
                _LoginEmailTextFieldWidget(),
                _LoginPasswordTextFieldWidget(),
                _LoginButton(),
                _RegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
