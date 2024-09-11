part of '../pages/add_or_edit_record_track_page.dart';

class _CommentTextFieldWidget extends HookConsumerWidget {
  const _CommentTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return Column(
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
            child: AppTextField(
              controller: controller,
              hintText: S.of(context).enterYourComment,
              style: context.primaryTextTheme.bodyLarge,
              onChanged: (value) {},
              maxLength: 300,
              maxLines: 5,
              minLines: 5,
            ),
          ),
        ),
      ],
    );
  }
}
