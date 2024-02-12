part of '../sign_up_view.dart';

class _SignUpActions extends StatelessWidget {
  const _SignUpActions();

  @override
  Widget build(BuildContext context) {
    Language language = di<Language>();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  language.Create_Account,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                child: SvgPicture.asset(
                  AssetsManger.googleIcon,
                  height: 30.h,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {},
          child: Text(
            language.Already_Have_An_Account,
          ),
        )
      ],
    );
  }
}
