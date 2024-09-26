part of '../pages/profile_page.dart';

class _AuthenticatedProfileWidget extends StatelessWidget {
  final User user;

  const _AuthenticatedProfileWidget({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm16),
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
  }
}