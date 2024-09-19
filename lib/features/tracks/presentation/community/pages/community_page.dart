import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/app/navigation/stores/nav_callback_store.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_colors.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/tracks/presentation/community/widgets/community_content_widget.dart';

class CommunityPage extends ConsumerWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: CommunityContentWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            context.read<CommunityNavCallbackStore>().navigateToTrackTracking,
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
