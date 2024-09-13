import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MainPage extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const MainPage({
    required this.navigationShell,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstSelected = navigationShell.currentIndex == 0;
    final isSecondSelected = navigationShell.currentIndex == 1;

    final firstItemColor = isFirstSelected
        ? context.bottomNavigationBarTheme.selectedItemColor
        : context.bottomNavigationBarTheme.unselectedItemColor;

    final secondItemColor = isSecondSelected
        ? context.bottomNavigationBarTheme.selectedItemColor
        : context.bottomNavigationBarTheme.unselectedItemColor;

    final authStatus = ref.watch(
      authStateNotifierProvider.select(
        (state) => state.authStatus,
      ),
    );

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
        items: [
          BottomNavigationBarItem(
            label: S.of(context).community,
            icon: SvgPicture.asset(
              AppAssets.icons.community,
              width: AppDiments.dm24,
              height: AppDiments.dm24,
              fit: BoxFit.cover,
              colorFilter: firstItemColor != null
                  ? ColorFilter.mode(firstItemColor, BlendMode.srcIn)
                  : null,
            ),
          ),
          BottomNavigationBarItem(
            label: authStatus.maybeWhen(
              authenticated: (user) => user.name ?? S.of(context).profile,
              orElse: () => S.of(context).profile,
            ),
            icon: authStatus.maybeWhen(
              authenticated: (user) {
                final photo = user.photo;

                if (photo == null) {
                  return SvgPicture.asset(
                    AppAssets.icons.profile,
                    width: AppDiments.dm24,
                    height: AppDiments.dm24,
                    fit: BoxFit.cover,
                    colorFilter: secondItemColor != null
                        ? ColorFilter.mode(secondItemColor, BlendMode.srcIn)
                        : null,
                  );
                }

                return ClipRRect(
                  borderRadius: BorderRadius.circular(AppDiments.dm16),
                  child: CachedNetworkImage(
                    imageUrl: photo,
                    width: AppDiments.dm32,
                    height: AppDiments.dm32,
                    fit: BoxFit.cover,
                    placeholder: (_, __) {
                      return Container(
                        width: AppDiments.dm32,
                        height: AppDiments.dm32,
                        color: context.colorScheme.onPrimary.withOpacity(.35),
                      );
                    },
                    errorWidget: (_, __, ___) {
                      return Container(
                        width: AppDiments.dm32,
                        height: AppDiments.dm32,
                        color: context.colorScheme.onPrimary.withOpacity(.35),
                      );
                    },
                  ),
                );
              },
              orElse: () {
                return SvgPicture.asset(
                  AppAssets.icons.profile,
                  width: AppDiments.dm32,
                  height: AppDiments.dm32,
                  fit: BoxFit.cover,
                  colorFilter: secondItemColor != null
                      ? ColorFilter.mode(secondItemColor, BlendMode.srcIn)
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
