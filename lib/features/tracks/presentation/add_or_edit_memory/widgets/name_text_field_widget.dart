part of '../pages/add_or_edit_memory_page.dart';

class _NameTextFieldWidget extends HookConsumerWidget {
  const _NameTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditMemoryStore>();

    String? _initialName() {
      return store.modeState.when(
        pure: () => null,
        add: (_) => null,
        edit: (source) {
          return source.when(
            online: (_, memory) => memory.name,
            local: (memory) => memory.name,
          );
        },
      );
    }

    final initialName = useMemoized(
      _initialName,
      [store.modeState],
    );

    final controller = useTextEditingController(text: initialName);

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
                hintText: S.of(context).enterMemoryName,
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
