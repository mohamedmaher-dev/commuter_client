part of '../sign_in_view.dart';

class ForgotPassDialog extends StatelessWidget {
  const ForgotPassDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    return AlertDialog(
      title: Text(language.Please_Input_Your_Mail),
      content: TextField(
        decoration: InputDecoration(
          hintText: language.Mail,
          prefixIcon: const Icon(
            Icons.mail,
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text(language.Confirm),
        ),
      ],
    );
  }
}
