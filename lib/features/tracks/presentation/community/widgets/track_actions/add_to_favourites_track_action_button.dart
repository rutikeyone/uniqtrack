part of 'track_actions_modal_bottom_sheet.dart';

class _AddToFavouritesTrackAction extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onCloseDialog;

  final BorderRadius? borderRadius;

  const _AddToFavouritesTrackAction({
    required this.onPressed,
    required this.onCloseDialog,
    this.borderRadius,
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
            onCloseDialog();
          },
          child: Material(
            borderRadius:
                borderRadius ?? BorderRadius.circular(AppDiments.dm64),
            child: Container(
              width: context.fullWidth,
              height: AppDiments.dm60,
              padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius:
                    borderRadius ?? BorderRadius.circular(AppDiments.dm12),
                color: context.bottomSheetTheme.backgroundColor,
              ),
              child: Text(
                S.of(context).addToFavorites,
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
