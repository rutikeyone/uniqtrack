part of '../pages/register_page.dart';

class _RegisterAvatarWidget extends ConsumerWidget {
  const _RegisterAvatarWidget({super.key});

  //TODO

  // void _pickImageFromGallery(WidgetRef ref) {
  //   final imageRepositoryWithGallery =
  //       ref.read(imageRepositoryWithGalleryProvider);
  //
  //   ref.read(registerStateNotifierProvider.notifier).pickImage(
  //         imageRepositoryWithGallery,
  //       );
  // }
  //
  // void _pickImageFromCamera(WidgetRef ref) {
  //   final imageRepositoryWithGallery =
  //       ref.read(imageRepositoryWithCameraProvider);
  //
  //   ref.read(registerStateNotifierProvider.notifier).pickImage(
  //         imageRepositoryWithGallery,
  //       );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagePickerMode =
        ref.watch(registerStateNotifierProvider.select((state) => state.mode));

    return imagePickerMode.when(
      placeholder: (gender) {
        final asset = gender.when(
          male: () => AppAssets.placeholdes.male,
          female: () => AppAssets.placeholdes.female,
        );

        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm12),
            child: GestureDetector(
              onTap: () => context.showImageSourceModalBottomSheet(
                onFromGalleryPressed: () {},
                onFromCameraPressed: () {},
              ),
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
}
