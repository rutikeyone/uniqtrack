part of '../pages/login_page.dart';

class _LoginEmailTextFieldWidget extends StatelessWidget {
  const _LoginEmailTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: AppTextField(
        hintText: S.of(context).enterYourEmail,
        style: context.textTheme.bodyLarge,
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
      ),
    );
  }
}
