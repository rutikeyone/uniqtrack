part of 'track_actions_modal_bottom_sheet.dart';

class _TrackActionsHeaderWidget extends StatelessWidget {
  const _TrackActionsHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.fullWidth,
      height: AppDiments.dm42,
      decoration: BoxDecoration(
        color: context.bottomSheetTheme.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDiments.dm12),
          topRight: Radius.circular(AppDiments.dm12),
        ),
      ),
      child: Text(
        S.of(context).actions,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.primaryTextTheme.bodyMedium,
      ),
    );
  }
}
