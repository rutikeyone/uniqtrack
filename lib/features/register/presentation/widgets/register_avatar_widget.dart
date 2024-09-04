part of '../pages/register_page.dart';

class _RegisterAvatarWidget extends ConsumerWidget {
  const _RegisterAvatarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = provider.Provider.of<RegisterStore>(context);

    return Observer(
      builder: (_) {
        final imagePickerModeState = store.pickerModeState;

        return imagePickerModeState.when(
          placeholder: (gender) {
            final asset = gender.when(
              male: () => AppAssets.placeholdes.male,
              female: () => AppAssets.placeholdes.female,
            );

            return Center(
              child: Padding(
                padding: const EdgeInsets.only(top: AppDiments.dm12),
                child: GestureDetector(
                  onTap: store.showImageSourceChooser,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.colorScheme.secondary,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(AppDiments.dm64),
                    ),
                    child: Image.asset(
                      asset,
                      width: AppDiments.dm128,
                      height: AppDiments.dm128,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            );
          },
          photo: () {
            return const SizedBox.shrink();
          },
        );
      }
    );

  }
}
