part of '../pages/add_or_edit_record_track_page.dart';

class _AddOrEditRecordTrackAppBar extends ConsumerWidget
    implements PreferredSizeWidget {
  const _AddOrEditRecordTrackAppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditRecordTrackStore>();
    final textStyle = context.primaryTextTheme.bodyLarge
        ?.copyWith(fontWeight: FontWeight.w600);

    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed:
            context.read<AddOrEditRecordTrackNavCallbackStore>().navigateBack,
        icon: Icon(
          Icons.arrow_back,
          size: AppDiments.dm24,
          color: context.appColorsTheme.secondaryIconColor,
        ),
      ),
      title: store.modeState.when(
        add: (_) => Text(
          S.of(context).addTrack,
          style: textStyle,
        ),
        edit: () => Text(
          S.of(context).editTrack,
          style: textStyle,
        ),
      ),
      actions: [
        store.modeState.maybeWhen(
          edit: () {
            return IconButton(
              onPressed: store.deleteRecordTrack,
              icon: SvgPicture.asset(
                AppAssets.icons.delete,
                width: AppDiments.dm24,
                height: AppDiments.dm24,
                colorFilter: ColorFilter.mode(
                    context.appColorsTheme.secondaryIconColor, BlendMode.srcIn),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
