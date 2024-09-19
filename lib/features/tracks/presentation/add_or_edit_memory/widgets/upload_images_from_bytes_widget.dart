part of '../pages/add_or_edit_memory_page.dart';

class _UploadImagesSectionWidget extends ConsumerWidget {
  final List<String> data;

  const _UploadImagesSectionWidget({
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
                  return ImageTile(
                    onPressed: () => context
                        .read<AddOrEditMemoryNavCallbackStore>()
                        .navigateToPhotoViewer(item),
                    data: item,
                    onDeletePressed: () => store.deletePhotoByIndex(index),
                  );
                },
              ).toList(),
            ),
          );
  }
}
