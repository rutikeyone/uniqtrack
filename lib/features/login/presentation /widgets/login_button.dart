part of '../pages/login_page.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final store = context.read<LoginStore>();


    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: Observer(
          builder: (context) {
            return AppElevatedButton(
              text: S.of(context).logIn,
              textStyle: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.secondary,
              ),
              onPressed: store.canLogin ? store.login : null,
            );
          }
        ),
      ),
    );
  }
}

