import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';

class ModalBottomSheetDividerWidget extends StatelessWidget {
  const ModalBottomSheetDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 24,
        height: 4,
        decoration: BoxDecoration(
          color: context.theme.dividerColor,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
