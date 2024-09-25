import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/activity.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/common/extensions/iterable_extensions.dart';
import 'package:uniqtrack/core/common_impl/app_validate_toolkit_impl.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_elevated_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_outlined_button.dart';
import 'package:uniqtrack/core/presentation/widgets/app_text_field.dart';
import 'package:uniqtrack/core/presentation/widgets/image_bytes_tile.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/add_or_edit_memory_result.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/stores/add_or_edit_memory_store.dart';
import 'package:uniqtrack/features/tracks/presentation/add_or_edit_memory/stores/states/add_or_edit_memory_actions.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/add_or_edit_memory_app_bar.dart';

part '../widgets/bottom_sheet_widget.dart';

part '../widgets/comment_text_field_widget.dart';

part '../widgets/name_text_field_widget.dart';

part '../widgets/upload_images_from_bytes_widget.dart';

part '../widgets/upload_images_widget.dart';

class AddOrEditMemoryPage extends StatefulWidget {
  const AddOrEditMemoryPage({super.key});

  @override
  State<AddOrEditMemoryPage> createState() => _AddOrEditMemoryPageState();
}

class _AddOrEditMemoryPageState extends State<AddOrEditMemoryPage> {
  late final ReactionDisposer _actionsReactionDisposer;
  late final AddOrEditMemoryStore _store;

  @override
  void initState() {
    _store = context.read<AddOrEditMemoryStore>();
    _initActionReactionDisposer();
    super.initState();
  }

  void _initActionReactionDisposer() {
    _actionsReactionDisposer = reaction(
      (_) => _store.actions,
      _handleReactionAction,
    );
  }

  void _handleReactionAction(Activity<AddOrEditMemoryActions>? action) =>
      action?.get()?.when(
            showImageSourceChooser: _showImageSourceChooser,
            navigateWithResult: _navigateWithResult,
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

  void _navigateWithResult(AddOrEditMemoryResult result) {
    final navStore = context.read<AddOrEditMemoryNavCallbackStore>();
    navStore.navigateWithResult(result);
  }

  void _navigateBack() {
    final navStore = context.read<AddOrEditMemoryNavCallbackStore>();
    navStore.navigateBack();
  }

  @override
  void dispose() {
    _actionsReactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _AddOrEditMemoryAppBar(),
      body: SafeArea(
        child: Column(
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
                      _UploadImagesWidget(),
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
