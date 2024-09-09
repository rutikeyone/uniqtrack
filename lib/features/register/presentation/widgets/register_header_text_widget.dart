part of '../pages/register_page.dart';

class _RegisterHeaderTextWidget extends StatelessWidget {
  const _RegisterHeaderTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).createAnAccount,
        style: context.primaryTextTheme.displayLarge,
      ),
    );
  }
}