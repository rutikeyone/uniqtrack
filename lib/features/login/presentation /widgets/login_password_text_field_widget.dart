part of '../pages/login_page.dart';

class _LoginPasswordTextFieldWidget extends StatelessWidget {
  const _LoginPasswordTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: AppTextField(
        hintText: S.of(context).enterYourPassword,
        style: context.textTheme.bodyLarge,
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
      ),
    );
  }
}
