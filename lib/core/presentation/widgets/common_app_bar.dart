import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? navigateBack;

  const CommonAppBar({
    this.navigateBack,
    super.key,
  });

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      leading: IconButton(
        onPressed: navigateBack ?? context.pop,
        icon: Icon(
          Icons.arrow_back,
          size: AppDiments.dm24,
        ),
      ),
    );
  }
}
