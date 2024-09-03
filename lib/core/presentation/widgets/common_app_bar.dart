import 'package:flutter/material.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback navigateBack;

  const CommonAppBar({
    required this.navigateBack,
    super.key,
  });

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: navigateBack,
        icon: const Icon(
          Icons.arrow_back,
          size: AppDiments.dm24,
        ),
      ),
    );
  }
}
