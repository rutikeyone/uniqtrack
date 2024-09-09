part of '../pages/forgot_password_page.dart';

class _ForgotEmailTextFieldWidget extends HookWidget {
  const _ForgotEmailTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final store = context.read<ForgotPasswordStore>();
    final controller = useTextEditingController(text: store.emailState.value);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Observer(builder: (context) {
        return AppTextField(
          controller: controller,
          hintText: S.of(context).enterYourEmail,
          style: context.primaryTextTheme.bodyLarge,
          onChanged: store.updateEmail,
          errorText: ValidationToolkit.validateEmail(store.emailState, context),
          suffixIcon: UnconstrainedBox(
            child: SvgPicture.asset(
              AppAssets.icons.mail,
              width: AppDiments.dm24,
              height: AppDiments.dm24,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                context.colorScheme.onPrimary,
                BlendMode.srcIn,
              ),
            ),
          ),
        );
      }),
    );
  }
}
