part of '../pages/add_or_edit_memory_page.dart';

class _UploadImagesFromBytesWidget extends ConsumerWidget {
  final List<Uint8List> data;

  const _UploadImagesFromBytesWidget({
    required this.data,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmptyList = data.isEmpty;
    final store = context.read<AddOrEditMemoryStore>();

    return isEmptyList
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm16),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: AppDiments.dm12,
              crossAxisSpacing: AppDiments.dm12,
              children: data.mapIndexed(
                (item, index) {
                  return ImageBytesTile(
                    onPressed: () => context
                        .read<AddOrEditMemoryNavCallbackStore>()
                        .navigateToPhotoViewerByBytes(item),
                    data: item,
                    onDeletePressed: () => store.deletePhotoByIndex(index),
                  );
                },
              ).toList(),
            ),
          );
  }
}
