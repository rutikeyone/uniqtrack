part of '../pages/add_or_edit_memory_page.dart';

class _UploadImagesWidget extends StatelessWidget {
  const _UploadImagesWidget();

  @override
  Widget build(BuildContext context) {
    final store = context.read<AddOrEditMemoryStore>();

    return Observer(
      builder: (context) {
        final photos = store.photos;

        return Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm16),
          child: Column(
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
                padding: const EdgeInsets.only(top: AppDiments.dm4),
                child: Text(
                  S
                      .of(context)
                      .beforeUploadingAPhotoMakeSureThatYourInternetConnection,
                  style: context.primaryTextTheme.bodySmall?.copyWith(
                    color: context.appColorsTheme.primaryTextHintColor,
                  ),
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
              _UploadImagesSectionWidget(data: photos),
            ],
          ),
        );
      },
    );
  }
}
