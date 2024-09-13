part of '../pages/add_or_edit_memory_page.dart';

class _UploadImagesWidget extends StatelessWidget {
  const _UploadImagesWidget();

  @override
  Widget build(BuildContext context) {
    final store = context.read<AddOrEditMemoryStore>();

    return Observer(
      builder: (context) {
        final uploadPhotosModeState = store.uploadPhotosModeState;

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).uploadPhotos,
              style: context.primaryTextTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppDiments.dm8),
              child: Container(
                width: context.fullWidth,
                color: context.colorScheme.secondary,
                height: AppDiments.dm1,
              ),
            ),
            uploadPhotosModeState.map(
              add: (state) {
                return _UploadImagesFromBytesWidget(data: state.photos);
              },
              edit: (state) => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}
