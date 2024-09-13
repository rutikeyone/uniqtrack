part of '../pages/register_page.dart';

class _RegisterPasswordTextField extends ConsumerWidget {
  const _RegisterPasswordTextField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Observer(
        builder: (_) {
          final store = provider.Provider.of<RegisterStore>(context);
          final password = store.passwordState;

          return AppObscureTextField(
            hintText: S.of(context).enterYourPassword,
            style: context.primaryTextTheme.bodyLarge,
            onChanged: store.updatePassword,
            errorText: appValidationToolkit.validatePassword(password, context),
            inputFormatter:
                FilteringTextInputFormatter.deny(RegexpPattern.space),
          );
        },
      ),
    );
  }
}
