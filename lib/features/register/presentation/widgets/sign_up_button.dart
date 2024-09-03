part of '../pages/register_page.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: SizedBox(
        width: context.fullWidth,
        height: AppDiments.dm48,
        child: AppElevatedButton(
          text: S.of(context).signUp,
          onPressed: () {},
          textStyle: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
