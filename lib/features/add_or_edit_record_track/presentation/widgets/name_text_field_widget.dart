part of '../pages/add_or_edit_record_track_page.dart';

class _NameTextFieldWidget extends HookConsumerWidget {
  const _NameTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

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
          child: AppTextField(
            controller: controller,
            hintText: S.of(context).enterTrackName,
            style: context.primaryTextTheme.bodyLarge,
            onChanged: (value) {},
            maxLength: 150,
          ),
        ),
      ],
    );
  }
}