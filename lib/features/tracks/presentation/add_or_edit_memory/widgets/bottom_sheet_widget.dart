part of '../pages/add_or_edit_memory_page.dart';

class _BottomSheetWidget extends ConsumerWidget {
  const _BottomSheetWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditMemoryStore>();

    return Padding(
      padding: const EdgeInsets.all(AppDiments.dm16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: AppDiments.dm48,
            child: Observer(builder: (context) {
              return AppElevatedButton(
                text: S.of(context).addPicture,
                onPressed: store.canAddPhoto ? store.addPicture : null,
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
              child: Observer(builder: (context) {
                return AppOutlinedButton(
                  text: S.of(context).save,
                  onPressed: store.canSaveChanges ? store.saveChanges : null,
                  borderRadius: BorderRadius.circular(AppDiments.dm6),
                  textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
