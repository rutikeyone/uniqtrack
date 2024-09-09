part of '../pages/register_page.dart';

class _RegisterEmailTextFieldWidget extends StatelessWidget {
  const _RegisterEmailTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final store = provider.Provider.of<RegisterStore>(context);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: Observer(builder: (_) {
        final emailState = store.emailState;
        final error = ValidationToolkit.validateEmail(emailState, context);

        return AppTextField(
          hintText: S.of(context).enterYourEmail,
          style: context.primaryTextTheme.bodyLarge,
          onChanged: store.updateEmail,
          errorText: error,
          inputFormatter:
              FilteringTextInputFormatter.deny(RegexpPattern.space),
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
