part of 'image_source_bottom_sheet.dart';

class _ImageSourceChooseFromGalleryTile extends StatelessWidget {
  final VoidCallback onPressed;

  const _ImageSourceChooseFromGalleryTile({
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
          S.of(context).chooseFromTheLibrary,
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
