part of '../pages/register_page.dart';

class _RegisterFullNameFieldWidget extends ConsumerWidget {
  const _RegisterFullNameFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm16),
      child: Observer(
        builder: (_) {
          final store = provider.Provider.of<RegisterStore>(context);
          final name = store.nameState;
          
          return AppTextField(
            hintText: S.of(context).enterYourFullName,
            style: context.primaryTextTheme.bodyLarge,
            onChanged: store.updateName,
            errorText: appValidationToolkit.validateName(name, context),
            suffixIcon: UnconstrainedBox(
              child: SvgPicture.asset(
                AppAssets.icons.person,
                width: AppDiments.dm20,
                height: AppDiments.dm20,
                fit: BoxFit.cover,
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
