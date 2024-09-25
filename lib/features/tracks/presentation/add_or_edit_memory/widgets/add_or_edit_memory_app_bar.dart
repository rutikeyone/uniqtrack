part of '../pages/add_or_edit_memory_page.dart';

class _AddOrEditMemoryAppBar extends ConsumerWidget
    implements PreferredSizeWidget {
  const _AddOrEditMemoryAppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = context.read<AddOrEditMemoryStore>();

    final textStyle = context.primaryTextTheme.bodyLarge
        ?.copyWith(fontWeight: FontWeight.w600);

    return Observer(
      builder: (context) {
        final modeState = store.modeState;

        return AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed:
                context.read<AddOrEditMemoryNavCallbackStore>().navigateBack,
            icon: Icon(
              Icons.arrow_back_ios,
              size: AppDiments.dm24,
              color: context.appColorsTheme.secondaryIconColor,
            ),
          ),
          title: Text(
            modeState.when(
              add: (_) => S.of(context).addMemory,
              edit: (_) => S.of(context).editMemory,
              pure: () => '',
            ),
            style: textStyle,
          ),
          actions: [
            modeState.maybeWhen(
              edit: (_) {
                return IconButton(
                  onPressed: store.deleteMemory,
                  icon: SvgPicture.asset(
                    AppAssets.icons.delete,
                    width: AppDiments.dm24,
                    height: AppDiments.dm24,
                    colorFilter: ColorFilter.mode(
                        context.appColorsTheme.secondaryIconColor,
                        BlendMode.srcIn),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
