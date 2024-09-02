part of '../pages/login_page.dart';

class _RegisterButton extends StatelessWidget {
  final VoidCallback navigateToRegisterPage;

  const _RegisterButton({
    required this.navigateToRegisterPage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: AppDiments.dm12),
      child: SizedBox(
        height: AppDiments.dm44,
        child: ElevatedButton(
          onPressed: navigateToRegisterPage,
          child: Text(S.of(context).createNewAccount),
        ),
      ),
    );
  }
}