import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniqtrack/app/navigation/providers/navigation_store_provider.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class CommunityPage extends ConsumerWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const SafeArea(
        child: const SizedBox.shrink(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(communityNavCallbackStoreProvider).navigateToTrackTracking,
        child: SvgPicture.asset(
          width: AppDiments.dm24,
          height: AppDiments.dm24,
          AppAssets.icons.skier,
          colorFilter: ColorFilter.mode(
            context.floatingActionButtonTheme.focusColor ?? AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
