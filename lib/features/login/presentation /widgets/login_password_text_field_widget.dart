part of '../pages/login_page.dart';

class _LoginPasswordTextFieldWidget extends ConsumerWidget {
  const _LoginPasswordTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<LoginStore>();
    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Observer(
            builder: (context) {
              final passwordState = store.passwordState;
              final error =
                  appValidationToolkit.validatePassword(passwordState, context);

              return AppObscureTextField(
                hintText: S.of(context).enterYourPassword,
                style: context.primaryTextTheme.bodyLarge,
                onChanged: store.updatePassword,
                errorText: error,
              );
            },
          ),
          InkWell(
            borderRadius: BorderRadius.circular(AppDiments.dm4),
            onTap: store.navigateToForgotPassword,
            child: Ink(
              padding: EdgeInsets.all(AppDiments.dm4),
              child: Text(
                S.of(context).forgotPassword,
                style: context.primaryTextTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
