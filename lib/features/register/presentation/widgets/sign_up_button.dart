part of '../pages/register_page.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: Observer(
          builder: (_) {
            final store = provider.Provider.of<RegisterStore>(context);

            final canRegister = store.canRegister;

            return AppElevatedButton(
              text: S.of(context).signUp,
              onPressed: canRegister ? store.register : null,
              textStyle: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.secondary,
              ),
            );
          }
        ),
      ),
    );
  }
}
