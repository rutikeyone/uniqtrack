part of '../pages/profile_page.dart';

class _MyTracksButton extends StatelessWidget {
  const _MyTracksButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm8),
      child: AppTransparentButton(
        label: S.of(context).myTracks,
        onPressed: () {},
      ),
    );
  }
}