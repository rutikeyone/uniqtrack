import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/providers/navigation_store_provider.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_validate_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/state/forgot_actions.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/forgot_password_header_text_widget.dart';

part '../widgets/forgot_email_text_field_widget.dart';

part '../widgets/forgot_button.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  late final ReactionDisposer actionsReactionDisposer;

  @override
  void initState() {
    final store = context.read<ForgotPasswordStore>();
    actionsReactionDisposer = reaction(
      (_) => store.actions,
      _handleReactionAction,
    );
    super.initState();
  }

  void _handleReactionAction(ForgotActions? action) => action?.when(
        hideFocus: _hideFocus,
        navigateBack: _navigateBack,
      );

  void _hideFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void _navigateBack() {
    ref.read(forgotPasswordNavCallbackStoreProvider).navigateBack();
  }

  @override
  void dispose() {
    actionsReactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                _ForgotPasswordHeaderTextWidget(),
                _ForgotEmailTextFieldWidget(),
                _ForgotButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
