part of '../pages/add_or_edit_record_track_page.dart';

class _EditActionButtons extends ConsumerWidget {
  const _EditActionButtons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditRecordTrackStore>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppDiments.dm48,
          child: Observer(builder: (context) {
            return AppElevatedButton(
              text: S.of(context).save,
              onPressed: store.canSave ? store.save : null,
              textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                color: context.colorScheme.secondary,
              ),
              borderRadius: BorderRadius.circular(AppDiments.dm6),
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm12),
          child: SizedBox(
            height: AppDiments.dm48,
            child: AppOutlinedButton(
              text: S.of(context).back,
              onPressed: context
                  .read<AddOrEditRecordTrackNavCallbackStore>()
                  .navigateBack,
              borderRadius: BorderRadius.circular(AppDiments.dm6),
              textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                color: context.colorScheme.onSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
