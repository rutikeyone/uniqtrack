import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uniqtrack/core/common/extensions/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? label;

  final VoidCallback? navigateBack;
  final bool showBackButton;

  final double? leadingWidth;
  final Widget? leadingWidget;

  const CommonAppBar({
    this.label,
    this.navigateBack,
    this.showBackButton = true,
    this.leadingWidget,
    this.leadingWidth,
    super.key,
  });

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      centerTitle: true,
      leadingWidth: leadingWidth,
      title: label != null
          ? Text(
              label!,
              style: context.primaryTextTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            )
          : null,
      leading: leadingWidget ??
          ((context.canPop() && showBackButton)
              ? IconButton(
                  onPressed: navigateBack ?? context.pop,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: AppDiments.dm20,
                  ),
                )
              : const SizedBox.shrink()),
    );
  }
}
