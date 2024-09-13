part of '../pages/login_page.dart';

class _RegisterButton extends ConsumerWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: AppElevatedButton(
          text: S.of(context).createNewAccount,
          backgroundColor: context.colorScheme.secondary,
          onPressed: context.read<LoginNavCallbackStore>().navigateToRegister,
        ),
      ),
    );
  }
}
