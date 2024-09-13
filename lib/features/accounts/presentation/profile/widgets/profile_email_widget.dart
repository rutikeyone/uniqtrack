part of '../pages/profile_page.dart';

class _ProfileEmailWidget extends StatelessWidget {
  final String? email;

  const _ProfileEmailWidget({
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    if (email != null) {
      return Padding(
        padding: const EdgeInsets.only(top: AppDiments.dm8),
        child: Text(
          email!,
          style: context.primaryTextTheme.displaySmall,
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
