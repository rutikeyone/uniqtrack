part of '../pages/add_or_edit_record_track_page.dart';

class _MemoriesWidget extends StatelessWidget {
  const _MemoriesWidget();

  @override
  Widget build(BuildContext context) {
    final store = context.read<AddOrEditRecordTrackStore>();

    return Observer(
      builder: (context) {
        final memories = store.memories;

        if (memories.isEmpty) {
          return Padding(
            padding: const EdgeInsets.only(top: AppDiments.dm16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).memories,
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
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).memories,
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
              Padding(
                padding: const EdgeInsets.only(top: AppDiments.dm8),
                child: SizedBox(
                  height: AppDiments.dm135,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: memories.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = memories[index];

                      return MemoryTile(
                        memory: item,
                        onDeletePressed: () => store.deleteMemory(item),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Gap(AppDiments.dm16);
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
