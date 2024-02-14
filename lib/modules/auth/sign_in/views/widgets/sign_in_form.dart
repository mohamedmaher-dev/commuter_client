part of '../sign_in_view.dart';

class _SignInForm extends StatelessWidget {
  const _SignInForm();
  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: language.Mail,
            prefixIcon: const Icon(Icons.mail),
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: language.Password,
            prefixIcon: const Icon(Icons.password),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const ForgotPassDialog(),
                );
              },
              child: Text(
                language.Forgot_Password,
              ),
            )
          ],
        ),
      ],
    );
  }
}
