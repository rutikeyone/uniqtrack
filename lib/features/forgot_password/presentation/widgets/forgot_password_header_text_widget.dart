part of '../pages/forgot_password_page.dart';

class _ForgotPasswordHeaderTextWidget extends StatelessWidget {
  const _ForgotPasswordHeaderTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).enterYourPasswordRecoveryEmail,
        style: context.textTheme.displayLarge,
      ),
    );
  }
}
