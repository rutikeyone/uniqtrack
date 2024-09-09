part of 'image_source_bottom_sheet.dart';

class _ImageSourceTakePhotoTile extends StatelessWidget {
  final VoidCallback onPressed;

  const _ImageSourceTakePhotoTile({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        borderRadius: BorderRadius.circular(AppDiments.dm64),
        child: Container(
          width: context.fullWidth,
          height: AppDiments.dm60,
          padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDiments.dm12),
            color: context.bottomSheetTheme.backgroundColor,
          ),
          child: Text(
            S.of(context).takeAPhoto,
            style: context.primaryTextTheme.displaySmall?.copyWith(
              color: context.colorScheme.onSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
