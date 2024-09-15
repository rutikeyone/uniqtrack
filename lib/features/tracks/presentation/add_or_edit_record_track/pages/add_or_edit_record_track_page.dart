import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/common_impl/app_validate_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_outlined_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/presentation/widgets/memory_tile.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_record_track/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/add_action_buttons.dart';
part '../widgets/app_or_edit_record_track_app_bar.dart';
part '../widgets/bottom_sheet_widget.dart';
part '../widgets/comment_text_field_widget.dart';
part '../widgets/edit_action_button.dart';
part '../widgets/memories_widget.dart';
part '../widgets/name_text_field_widget.dart';

class AddOrEditRecordTrackPage extends StatelessWidget {
  const AddOrEditRecordTrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _AddOrEditRecordTrackAppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                      _MemoriesWidget(),
                    ],
                  ),
                ),
              ),
            ),
            _BottomSheetWidget(),
          ],
        ),
      ),
    );
  }
}

