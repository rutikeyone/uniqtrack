part of '../pages/register_page.dart';

class _RegisterFullNameFieldWidget extends StatelessWidget {
  const _RegisterFullNameFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Observer(
        builder: (_) {
          final store = provider.Provider.of<RegisterStore>(context);
          
          final name = store.nameState;
          
          return AppTextField(
            hintText: S.of(context).enterYourFullName,
            style: context.textTheme.bodyLarge,
            onChanged: store.updateName,
            errorText: ValidationToolkit.validateName(name, context),
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
          );
        }
      ),
    );
  }
}
