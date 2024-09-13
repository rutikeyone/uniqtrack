part of '../pages/register_page.dart';

class _RegisterAvatarWidget extends ConsumerWidget {
  const _RegisterAvatarWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = provider.Provider.of<RegisterStore>(context);

    return Observer(
      builder: (_) {
        final imagePickerModeState = store.pickerModeState;
        final gender = store.genderState;

        return imagePickerModeState.when(
          placeholder: () {
            final asset = gender.when(
              unknown: () => null,
              male: () => AppAssets.placeholdes.male,
              female: () => AppAssets.placeholdes.female,
            );

            if (asset == null) {
              return const SizedBox.shrink();
            }

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
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
          photo: (file) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(top: AppDiments.dm12),
                child: GestureDetector(
                  onTap: store.showImageSourceChooser,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.colorScheme.secondary,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(AppDiments.dm64),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppDiments.dm64),
                      child: Image.memory(
                        file.bytes,
                        width: AppDiments.dm128,
                        height: AppDiments.dm128,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
