part of '../pages/login_page.dart';

class _LoginHeaderTextWidget extends StatelessWidget {
  const _LoginHeaderTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).logInToYourAccount,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
