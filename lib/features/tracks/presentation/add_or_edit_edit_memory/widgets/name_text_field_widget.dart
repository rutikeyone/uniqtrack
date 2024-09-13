part of '../pages/add_or_edit_memory_page.dart';

class _NameTextFieldWidget extends HookConsumerWidget {
  const _NameTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final store = context.read<AddOrEditMemoryStore>();

    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).name,
          style: context.primaryTextTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm8),
          child: Observer(
            builder: (context) {
              return AppTextField(
                controller: controller,
                hintText: S.of(context).enterTrackName,
                style: context.primaryTextTheme.bodyLarge,
                onChanged: store.updateMemoryName,
                errorText: appValidationToolkit.validateMemoryName(
                    store.memoryName, context),
                textInputAction: TextInputAction.next,
                maxLength: 150,
              );
            },
          ),
        ),
      ],
    );
  }
}
