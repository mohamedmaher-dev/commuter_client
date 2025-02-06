part of '../sign_in_view.dart';

class ForgotPassDialog extends StatelessWidget {
  const ForgotPassDialog({super.key, required this.signInBloc});
  final SignInBloc signInBloc;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    return AlertDialog(
      title: Text(language.please_input_your_mail),
      content: Form(
        autovalidateMode: AutovalidateMode.always,
        key: signInBloc.formKeyForgotPass,
        child: TextFormField(
          controller: signInBloc.emailForgotPassController,
          decoration: InputDecoration(
            hintText: language.mail,
            prefixIcon: const Icon(
              Icons.mail,
            ),
          ),
          validator: (value) => FormValidation.email(value, language),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            AppRouter.pop(context: context);
            signInBloc.add(const SignInEvent.forgotPass());
          },
          child: Text(language.confirm),
        ),
      ],
    );
  }
}
