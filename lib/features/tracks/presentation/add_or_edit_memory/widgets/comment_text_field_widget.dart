part of '../pages/add_or_edit_memory_page.dart';

class _CommentTextFieldWidget extends HookConsumerWidget {
  const _CommentTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditMemoryStore>();

    String? _initialComment() {
      return store.modeState.when(
        pure: () => null,
        add: (_) => null,
        edit: (source) {
          return source.when(
            online: (_, memory) => memory.comment,
            local: (memory) => memory.comment,
          );
        },
      );
    }

    final initialComment = useMemoized(
      _initialComment,
      [store.modeState],
    );

    final controller = useTextEditingController(text: initialComment);

    final appValidationToolkit = ref.watch(appValidationToolkitProvider);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).comment,
            style: context.primaryTextTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm8),
            child: SizedBox(
              height: AppDiments.dm144,
              child: Observer(
                builder: (context) {
                  return AppTextField(
                    controller: controller,
                    hintText: S.of(context).enterYourComment,
                    style: context.primaryTextTheme.bodyLarge,
                    maxLength: 300,
                    onChanged: store.updateComment,
                    errorText: appValidationToolkit.validateComment(
                        store.comment, context),
                    maxLines: 5,
                    minLines: 5,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
