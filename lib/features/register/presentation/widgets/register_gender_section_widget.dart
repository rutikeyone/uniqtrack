part of '../pages/register_page.dart';

class _RegisterGenderSectionWidget extends StatelessWidget {
  const _RegisterGenderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _RegisterAvatarWidget(),
        _RegisterGenderWidget(),
      ],
    );
  }
}
