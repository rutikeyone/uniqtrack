part of '../pages/register_page.dart';

class _BackButton extends ConsumerWidget {
  const _BackButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: AppElevatedButton(
          text: S.of(context).back,
          backgroundColor: context.colorScheme.secondary,
          onPressed: ref.read(registerNavCallbackStoreProvider).navigateBack,
        ),
      ),
    );
  }
}
