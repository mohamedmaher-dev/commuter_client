part of '../sign_up_view.dart';

class _SignUpActions extends StatelessWidget {
  const _SignUpActions();

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);
    return Column(
      children: [
        FilledButton(
          onPressed: () {},
          child: Text(
            language.Create_Account,
          ),
        ),
        SizedBox(height: 10.h),
        GoogleBTN(onPressed: () {}, language: language),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {
            AppRouter.push(context: context, page: Pages.otp);
          },
          child: Text(
            language.Already_Have_An_Account,
          ),
        )
      ],
    );
  }
}
