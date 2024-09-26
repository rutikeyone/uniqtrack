part of '../pages/profile_page.dart';

class _NotAuthenticatedProfileWidget extends StatelessWidget {
  const _NotAuthenticatedProfileWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDiments.dm16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).inOrderToViewUserInformationYouNeedToLog,
            textAlign: TextAlign.center,
            style: context.primaryTextTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppDiments.dm16,
            ),
            child: SizedBox(
              width: context.fullWidth,
              height: AppDiments.dm48,
              child: AppElevatedButton(
                onPressed: context.read<ProfileNavCallbackStore>().navigateToLogin,
                text: S.of(context).logIn,
                textStyle: context.primaryTextTheme.labelLarge?.copyWith(
                  color: context.colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}