part of '../pages/register_page.dart';

class _RegisterEmailTextFieldWidget extends ConsumerWidget {
  const _RegisterEmailTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = provider.Provider.of<RegisterStore>(context);
    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Observer(builder: (_) {
        final emailState = store.emailState;

        return AppTextField(
          hintText: S.of(context).enterYourEmail,
          style: context.primaryTextTheme.bodyLarge,
          onChanged: store.updateEmail,
          errorText: appValidationToolkit.validateEmail(emailState, context),
          inputFormatter: FilteringTextInputFormatter.deny(RegexpPattern.space),
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
