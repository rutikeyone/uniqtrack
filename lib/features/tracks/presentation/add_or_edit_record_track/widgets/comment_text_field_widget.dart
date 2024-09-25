part of '../pages/add_or_edit_record_track_page.dart';

class _CommentTextFieldWidget extends HookConsumerWidget {
  const _CommentTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditRecordTrackStore>();
    final controller = useTextEditingController(text: store.comment.value);

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
                    onChanged: store.updateComment,
                    errorText: appValidationToolkit.validateComment(
                        store.comment, context),
                    maxLength: 300,
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
