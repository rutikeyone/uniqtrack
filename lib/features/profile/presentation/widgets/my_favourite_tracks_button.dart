part of '../pages/profile_page.dart';

class _MyFavouriteTracksButton extends StatelessWidget {
  const _MyFavouriteTracksButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: AppTransparentButton(
        label: S.of(context).myFavouriteTracks,
        onPressed: () {},
      ),
    );
  }
}