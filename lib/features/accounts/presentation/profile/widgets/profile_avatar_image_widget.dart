part of '../pages/profile_page.dart';

class _ProfileAvatarImageWidget extends StatelessWidget {
  final String? photo;
  final Gender? gender;

  const _ProfileAvatarImageWidget({
    required this.photo,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    if (photo != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm76),
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
              child: CachedNetworkImage(
                imageUrl: photo!,
                width: AppDiments.dm128,
                height: AppDiments.dm128,
                fit: BoxFit.cover,
                placeholder: (_, __) {
                  return Container(
                    width: AppDiments.dm128,
                    height: AppDiments.dm128,
                    color: context.colorScheme.onPrimary.withOpacity(.35),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Container(
                    width: AppDiments.dm128,
                    height: AppDiments.dm128,
                    color: context.colorScheme.onPrimary.withOpacity(.35),
                  );
                },
              ),
            ),
          ),
        ),
      );
    } else if (gender != null) {
      final asset = gender?.when(
        unknown: () => null,
        male: () => AppAssets.placeholdes.male,
        female: () => AppAssets.placeholdes.female,
      );

      if (asset == null) {
        return const SizedBox.shrink();
      }

      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm76),
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
      );
    }

    return const SizedBox.shrink();
  }
}
