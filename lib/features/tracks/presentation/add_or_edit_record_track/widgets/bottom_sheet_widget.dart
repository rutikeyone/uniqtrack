part of '../pages/add_or_edit_record_track_page.dart';

class _BottomSheetWidget extends StatelessWidget {
  const _BottomSheetWidget();

  @override
  Widget build(BuildContext context) {
    final store = context.read<AddOrEditRecordTrackStore>();

    return Container(
      padding: const EdgeInsets.all(AppDiments.dm16),
      color: context.theme.scaffoldBackgroundColor,
      child: Observer(builder: (context) {
        final modeState = store.modeState;

        return modeState.when(
          add: (_) => _AddActionButtons(),
          edit: (_) => _EditActionButtons(),
        );
      }),
    );
  }
}