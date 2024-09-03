part of '../pages/register_page.dart';

class _RegisterFullNameFieldWidget extends StatelessWidget {
  const _RegisterFullNameFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: AppTextField(
        hintText: S.of(context).enterYourFullName,
        style: context.textTheme.bodyLarge,
        suffixIcon: UnconstrainedBox(
          child: SvgPicture.asset(
            AppAssets.icons.person,
            width: AppDiments.dm20,
            height: AppDiments.dm20,
            fit: BoxFit.contain,
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
