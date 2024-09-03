part of '../pages/register_page.dart';

class _RegisterGenderWidget extends ConsumerWidget {
  const _RegisterGenderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMaleSelected = ref.watch(
        registerStateNotifierProvider.select((state) => state.isMaleSelected));

    final isFemaleSelected = ref.watch(registerStateNotifierProvider
        .select((state) => state.isFemaleSelected));

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GenderTile(
              text: S.of(context).male,
              onPressed: () => ref
                  .read(registerStateNotifierProvider.notifier)
                  .updateGender(const Gender.male()),
              isSelected: isMaleSelected,
            ),
          ),
          const Gap(AppDiments.dm12),
          Expanded(
            child: GenderTile(
              text: S.of(context).female,
              onPressed: () => ref
                  .read(registerStateNotifierProvider.notifier)
                  .updateGender(const Gender.female()),
              isSelected: isFemaleSelected,
            ),
          ),
        ],
      ),
    );
  }
}
