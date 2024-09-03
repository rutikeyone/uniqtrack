part of 'image_source_bottom_sheet.dart';

class _ImageSourceTakePhotoTile extends StatelessWidget {
  final VoidCallback onPressed;

  const _ImageSourceTakePhotoTile({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: context.bottomSheetTheme.backgroundColor,
        width: context.fullWidth,
        height: AppDiments.dm60,
        padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm16),
        alignment: Alignment.center,
        child: Text(
          S.of(context).takeAPhoto,
          style: context.textTheme.displaySmall?.copyWith(
            color: context.colorScheme.onSecondary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
