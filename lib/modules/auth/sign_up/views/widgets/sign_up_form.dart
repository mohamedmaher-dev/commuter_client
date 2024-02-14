part of '../sign_up_view.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);

    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: language.Name,
              prefixIcon: const Icon(Icons.person),
            ),
          ),
          SizedBox(height: 10.h),
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
          SizedBox(height: 10.h),
          TextFormField(
            decoration: InputDecoration(
              hintText: language.Confrim_Password,
              prefixIcon: const Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          InternationalPhoneNumberInput(
            inputDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              filled: true,
              hintText: language.Phone,
            ),
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              useBottomSheetSafeArea: true,
              setSelectorButtonAsPrefixIcon: true,
              leadingPadding: 10.w,
              trailingSpace: false,
            ),
            searchBoxDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              hintText: language.Search,
            ),
            spaceBetweenSelectorAndTextField: 0,
            onInputChanged: (number) {},
          )
        ],
      ),
    );
  }
}
