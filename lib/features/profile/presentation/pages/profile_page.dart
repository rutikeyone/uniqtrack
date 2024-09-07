import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqtrack/app/app_state/auth/auth_notifier.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/presentation/constants/assets/app_assets.dart';
import 'package:uniqtrack/core/presentation/widgets/app_transparent_button.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/generated/l10n.dart';

part '../widgets/profile_avatar_image_widget.dart';

part '../widgets/profile_email_widget.dart';

part '../widgets/sign_out_button.dart';

part '../widgets/my_tracks_button.dart';

part '../widgets/my_favourite_tracks_button.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStatus = ref.watch(
      authStateNotifierProvider.select((state) => state.authStatus),
    );

    return Scaffold(
      body: SafeArea(
        child: authStatus.maybeWhen(
          authenticated: (user) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDiments.dm16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _ProfileAvatarImageWidget(
                      photo: user.photo,
                      gender: user.gender,
                    ),
                    _ProfileEmailWidget(
                      email: user.email,
                    ),
                    _MyFavouriteTracksButton(),
                    _MyTracksButton(),
                    _SignOutButton(),
                  ],
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}