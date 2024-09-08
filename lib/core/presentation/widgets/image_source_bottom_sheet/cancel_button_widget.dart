part of 'image_source_bottom_sheet.dart';

class _CancelButtonWidget extends StatelessWidget {
  final VoidCallback onClosePressed;

  const _CancelButtonWidget({
    super.key,
    required this.onClosePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(AppDiments.dm12),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDiments.dm12),
        onTap: () => Navigator.of(context).pop(),
        child: Ink(
          width: context.fullWidth,
          height: AppDiments.dm60,
          child: Center(
            child: Text(
              S.of(context).cancel,
              style: context.textTheme.displaySmall?.copyWith(
                color: context.colorScheme.onSecondary,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
