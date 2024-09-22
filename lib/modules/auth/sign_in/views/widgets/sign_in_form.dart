part of '../sign_in_view.dart';

class _SignInForm extends StatelessWidget {
  const _SignInForm();
  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    final SignInBloc signInBloc = BlocProvider.of<SignInBloc>(context);
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: signInBloc.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: signInBloc.emailController,
            decoration: InputDecoration(
              hintText: language.mail,
              prefixIcon: const Icon(Icons.mail),
            ),
            validator: (value) => FormValidation.email(value, language),
          ),
          SizedBox(height: 10.h),
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return TextFormField(
                controller: signInBloc.passwordController,
                obscureText: signInBloc.passIsHide,
                decoration: InputDecoration(
                  hintText: language.password,
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      signInBloc.add(const SignInEvent.changePassIsHide());
                    },
                    icon: Icon(
                      signInBloc.passIsHide
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                validator: (value) => FormValidation.password(value, language),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        ForgotPassDialog(signInBloc: signInBloc),
                  );
                },
                child: Text(
                  language.forgot_password,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
