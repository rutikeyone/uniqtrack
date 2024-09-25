part of '../pages/add_or_edit_record_track_page.dart';

class _NameTextFieldWidget extends HookConsumerWidget {
  const _NameTextFieldWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditRecordTrackStore>();
    final controller = useTextEditingController(text: store.trackName.value);

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
                onChanged: store.updateTrackName,
                errorText: appValidationToolkit.validateTrackName(
                    store.trackName, context),
                maxLength: 150,
                textInputAction: TextInputAction.next,
              );
            }
          ),
        ),
      ],
    );
  }
}
