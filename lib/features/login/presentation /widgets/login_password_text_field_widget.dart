part of '../pages/login_page.dart';

class _LoginPasswordTextFieldWidget extends ConsumerWidget {
  const _LoginPasswordTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<LoginStore>();

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Observer(builder: (context) {
            return AppTextField(
              hintText: S.of(context).enterYourPassword,
              style: context.textTheme.bodyLarge,
              onChanged: store.updatePassword,
              errorText: ValidationToolkit.validatePassword(
                  store.passwordState, context),
              suffixIcon: UnconstrainedBox(
                child: SvgPicture.asset(
                  AppAssets.icons.password,
                  width: AppDiments.dm20,
                  height: AppDiments.dm20,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    context.colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              obscureText: true,
            );
          }),
          InkWell(
            borderRadius: BorderRadius.circular(AppDiments.dm4),
            onTap: ref
                .read(loginNavCallbackStoreProvider)
                .navigateToForgotPassword,
            child: Ink(
              padding: EdgeInsets.all(AppDiments.dm4),
              child: Text(
                S.of(context).forgotPassword,
                style: context.textTheme.bodyMedium?.copyWith(
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
