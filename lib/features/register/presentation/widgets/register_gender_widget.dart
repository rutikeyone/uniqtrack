part of '../pages/register_page.dart';

class _RegisterGenderWidget extends ConsumerWidget {
  const _RegisterGenderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = provider.Provider.of<RegisterStore>(context);

    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return GenderTile(
                text: S.of(context).male,
                onPressed: () {
                  const maleState = Gender.male();
                  store.updateGender(maleState);
                },
                isSelected: store.isMaleSelectedState,
              );
            }),
          ),
          const Gap(AppDiments.dm12),
          Expanded(
            child: Observer(builder: (_) {
              return GenderTile(
                text: S.of(context).female,
                onPressed: () {
                  const femaleState = Gender.female();
                  store.updateGender(femaleState);
                },
                isSelected: store.isFemaleSelectedState,
              );
            }),
          ),
        ],
      ),
    );
  }
}
