part of '../pages/profile_page.dart';

class _SignOutButton extends ConsumerWidget {
  const _SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm6),
      child: AppTransparentButton(
        label: S.of(context).signOut,
        onPressed: ref.read(authStateNotifierProvider.notifier).signOut,
      ),
    );
  }
}
