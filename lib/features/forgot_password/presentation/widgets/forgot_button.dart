part of '../pages/forgot_password_page.dart';

class _ForgotButton extends StatelessWidget {
  const _ForgotButton({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<ForgotPasswordStore>();

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: Observer(builder: (context) {
          return AppElevatedButton(
            text: S.of(context).sendPassword,
            textStyle: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.secondary,
            ),
            onPressed: store.canForgotPassword ? store.forgotPassword : null,
          );
        }),
      ),
    );
  }
}
