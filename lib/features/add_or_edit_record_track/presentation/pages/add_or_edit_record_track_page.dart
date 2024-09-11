import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_outlined_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/add_or_edit_record_track/presentation/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/app_or_edit_record_track_app_bar.dart';

part '../widgets/name_text_field_widget.dart';

part '../widgets/comment_text_field_widget.dart';

part '../widgets/add_action_buttons.dart';

class AddOrEditRecordTrackPage extends StatelessWidget {
  const AddOrEditRecordTrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: _BottomSheetWidget(),
      appBar: _AddOrEditRecordTrackAppBar(
        navigateBack: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppDiments.dm16,
            right: AppDiments.dm16,
            top: AppDiments.dm12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _NameTextFieldWidget(),
              _CommentTextFieldWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomSheetWidget extends StatelessWidget {
  const _BottomSheetWidget();

  @override
  Widget build(BuildContext context) {
    final store = context.read<AddOrEditRecordTrackStore>();

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDiments.dm16,
        vertical: AppDiments.dm12,
      ),
      color: context.theme.scaffoldBackgroundColor,
      child: Observer(builder: (context) {
        final modeState = store.modeState;

        return modeState.when(
          add: () => _AddActionButtons(),
          edit: () => _EditActionButtons(),
        );
      }),
    );
  }
}

class _EditActionButtons extends StatelessWidget {
  const _EditActionButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppDiments.dm48,
          child: AppElevatedButton(
            text: S.of(context).save,
            onPressed: () {},
            textStyle: context.primaryTextTheme.labelLarge?.copyWith(
              color: context.colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(AppDiments.dm6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm12),
          child: SizedBox(
            height: AppDiments.dm48,
            child: AppOutlinedButton(
              text: S.of(context).back,
              onPressed: () {},
              borderRadius: BorderRadius.circular(AppDiments.dm6),
              textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                color: context.colorScheme.onSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

