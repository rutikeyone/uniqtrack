import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/validation/validation_toolkit.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/login/presentation%20/providers/login_store.dart';
import 'package:uniqtrack/features/login/presentation%20/providers/state/login_actions.dart';
import 'package:uniqtrack/features/navigation/providers/login_nav_callback_store_provider.dart';
import 'package:uniqtrack/generated/l10n.dart';
import 'package:provider/provider.dart' as provider;

part '../widgets/login_header_text_widget.dart';

part '../widgets/login_password_text_field_widget.dart';

part '../widgets/login_email_text_field_widget.dart';

part '../widgets/login_button.dart';

part '../widgets/register_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final ReactionDisposer actionsReactionDisposer;

  @override
  void initState() {
    _initActionReactionDisposer();
    super.initState();
  }

  void _initActionReactionDisposer() {
    final store = context.read<LoginStore>();
    actionsReactionDisposer = reaction(
      (_) => store.actions,
      _handleReactionAction,
    );
  }

  void _handleReactionAction(LoginActions? action) => action?.when(
        hideFocus: _hideFocus,
      );

  void _hideFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
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
