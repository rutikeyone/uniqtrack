part of '../pages/login_page.dart';

class _LoginEmailTextFieldWidget extends StatelessWidget {
  const _LoginEmailTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: AppDiments.dm24),
      child: TextField(),
    );
  }
}
