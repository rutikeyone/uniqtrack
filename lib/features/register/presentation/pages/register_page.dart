import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart' as provider;
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/validation/regexp_pattern.dart';
import 'package:uniqtrack/core/presentation/validation/validation_toolkit.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/presentation/widgets/gender_tile.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/navigation/providers/register_nav_callback_store_provider.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_actions.dart';
import 'package:uniqtrack/generated/l10n.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part '../widgets/back_button.dart';

part '../widgets/register_avatar_widget.dart';

part '../widgets/register_email_text_field_widget.dart';

part '../widgets/register_full_name_field_widget.dart';

part '../widgets/register_gender_section_widget.dart';

part '../widgets/register_gender_widget.dart';

part '../widgets/register_header_text_widget.dart';

part '../widgets/register_password_text_field_widget.dart';

part '../widgets/sign_up_button.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  late final ReactionDisposer actionsReactionDisposer;

  @override
  void initState() {
    _initActionReactionDisposer();
    super.initState();
  }

  void _initActionReactionDisposer() {
    final store = context.read<RegisterStore>();
    actionsReactionDisposer = reaction(
      (_) => store.actions,
      _handleReactionAction,
    );
  }

  void _handleReactionAction(RegisterActions? action) => action?.when(
        showImageSourceChooser: _showImageSourceChooser,
        hideFocus: _hideFocus,
        navigateBack: _navigateBack,
      );

  void _showImageSourceChooser(
    VoidCallback chooseImageFromGallery,
    VoidCallback chooseImageFromCamera,
  ) {
    context.showImageSourceModalBottomSheet(
      onFromGalleryPressed: chooseImageFromGallery,
      onFromCameraPressed: chooseImageFromCamera,
    );
  }

  void _hideFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void _navigateBack() {
    ref.read(registerNavCallbackStoreProvider).navigateBack.call();
  }

  @override
  void dispose() {
    actionsReactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
