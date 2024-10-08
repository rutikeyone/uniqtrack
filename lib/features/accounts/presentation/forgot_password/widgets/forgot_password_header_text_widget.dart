part of '../pages/forgot_password_page.dart';

class _ForgotPasswordHeaderTextWidget extends StatelessWidget {
  const _ForgotPasswordHeaderTextWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).enterYourPasswordRecoveryEmail,
        style: context.primaryTextTheme.displayMedium,
      ),
    );
  }
}
