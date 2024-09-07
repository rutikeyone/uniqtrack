part of '../pages/register_page.dart';

class _RegisterPasswordTextField extends StatelessWidget {
  const _RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Observer(
        builder: (_) {
          final store = provider.Provider.of<RegisterStore>(context);
          final password = store.passwordState;

          return AppObscureTextField(
            hintText: S.of(context).enterYourPassword,
            style: context.textTheme.bodyLarge,
            onChanged: store.updatePassword,
            errorText: ValidationToolkit.validatePassword(password, context),
            inputFormatter:
                FilteringTextInputFormatter.deny(RegexpPattern.space),
          );
        },
      ),
    );
  }
}
