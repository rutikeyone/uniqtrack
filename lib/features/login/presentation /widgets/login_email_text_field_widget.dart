part of '../pages/login_page.dart';

class _LoginEmailTextFieldWidget extends StatelessWidget {
  const _LoginEmailTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final store = context.read<LoginStore>();

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Observer(builder: (context) {
        return AppTextField(
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
