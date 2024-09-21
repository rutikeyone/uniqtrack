part of 'track_actions_modal_bottom_sheet.dart';

class _RemoveFromFavouritesTrackAction extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onClosePressed;

  const _RemoveFromFavouritesTrackAction({
    required this.onPressed,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: context.fullWidth,
          color: context.theme.dividerColor,
          height: AppDiments.dm1,
        ),
        GestureDetector(
          onTap: () {
            onPressed();
            onClosePressed();
          },
          child: Material(
            borderRadius: BorderRadius.circular(AppDiments.dm64),
            child: Container(
              width: context.fullWidth,
              height: AppDiments.dm60,
              padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDiments.dm64),
                color: context.bottomSheetTheme.backgroundColor,
              ),
              child: Text(
                S.of(context).removeFromFavourites,
                style: context.primaryTextTheme.displaySmall?.copyWith(
                  color: context.colorScheme.onSecondary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
