part of '../sign_in_view.dart';

class _SignInActions extends StatelessWidget {
  const _SignInActions();
  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Column(
      children: [
        FilledButton(
          onPressed: () {},
          child: Text(
            language.Sign_In,
          ),
        ),
        SizedBox(height: 10.h),
        GoogleBTN(onPressed: () {}, language: language),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {
            AppRouter.push(context: context, page: Pages.signUp);
          },
          child: Text(
            language.Already_Have_An_Account,
          ),
        )
      ],
    );
  }
}
