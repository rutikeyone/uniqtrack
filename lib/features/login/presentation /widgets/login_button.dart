part of '../pages/login_page.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: AppDiments.dm24),
      child: SizedBox(
        height: AppDiments.dm44,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(S.of(context).logIn),
        ),
      ),
    );
  }
}
