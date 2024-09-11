part of '../pages/add_or_edit_record_track_page.dart';

class _AddActionButtons extends StatelessWidget {
  const _AddActionButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppDiments.dm48,
          child: AppElevatedButton(
            text: S.of(context).save,
            onPressed: () {},
            textStyle: context.primaryTextTheme.labelLarge?.copyWith(
              color: context.colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(AppDiments.dm6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppDiments.dm12),
          child: SizedBox(
            height: AppDiments.dm48,
            child: AppOutlinedButton(
              text: S.of(context).dontSave,
              onPressed: () {},
              borderRadius: BorderRadius.circular(AppDiments.dm6),
              textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                color: context.colorScheme.onSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}