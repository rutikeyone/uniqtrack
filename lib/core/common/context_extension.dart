import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/presentation/widgets/image_source_bottom_sheet/image_source_bottom_sheet.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  InputDecorationTheme get inputDecorationTheme => theme.inputDecorationTheme;

  BottomSheetThemeData get bottomSheetTheme => theme.bottomSheetTheme;

  Size get size => MediaQuery.of(this).size;

  double get fullWidth => size.width;

  double get bottomSheetWidth => fullWidth - AppDiments.dm16;

  Future<void> showImageSourceModalBottomSheet({
    required VoidCallback onFromGalleryPressed,
    required VoidCallback onFromCameraPressed,
  }) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: bottomSheetWidth,
      ),
      context: this,
      builder: (context) {
        return ImageSourceModalBottomSheet(
          onFromCameraPressed: onFromCameraPressed,
          onFromGalleryPressed: onFromGalleryPressed,
          onClosePressed: Navigator.of(context).pop,
        );
      },
    );
  }

  String fromAppStrings(AppStrings value) {
    return value.when(
      error: () => S.of(this).error,
      okay: () => S.of(this).okay,
      errorHasOccurred: () => S.of(this).anErrorHasOccurredInTheApplication,
    );
  }
}
