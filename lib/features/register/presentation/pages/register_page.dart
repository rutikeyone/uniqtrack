import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/presentation/widgets/gender_tile.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/register/presentation/providers/register_state_notifier_provider.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/gender.dart';
import 'package:uniqtrack/generated/l10n.dart';
import 'package:uniqtrack/navigation/providers/register_nav_callback_store_provider.dart';

part '../widgets/back_button.dart';
part '../widgets/register_avatar_widget.dart';
part '../widgets/register_email_text_field_widget.dart';
part '../widgets/register_full_name_field_widget.dart';
part '../widgets/register_gender_section_widget.dart';
part '../widgets/register_gender_widget.dart';
part '../widgets/register_header_text_widget.dart';
part '../widgets/register_password_text_field_widget.dart';
part '../widgets/sign_up_button.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CommonAppBar(
        navigateBack: ref.read(registerNavCallbackStoreProvider).navigateBack,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppDiments.dm20,
              horizontal: AppDiments.dm16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _RegisterHeaderTextWidget(),
                _RegisterGenderSectionWidget(),
                _RegisterEmailTextFieldWidget(),
                _RegisterFullNameFieldWidget(),
                _RegisterPasswordTextField(),
                _SignUpButton(),
                _BackButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
