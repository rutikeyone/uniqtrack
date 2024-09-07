part of 'image_source_bottom_sheet.dart';

class _ImageSourceHeaderWidget extends StatelessWidget {
  const _ImageSourceHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.fullWidth,
      height: AppDiments.dm42,
      child: Text(
        S.of(context).image,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
