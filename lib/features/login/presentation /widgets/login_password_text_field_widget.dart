part of '../pages/login_page.dart';

class _LoginPasswordTextFieldWidget extends StatelessWidget {
  const _LoginPasswordTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: AppDiments.dm24,
      ),
      child: TextField(),
    );
  }
}