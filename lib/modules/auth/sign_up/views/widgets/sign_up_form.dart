part of '../sign_up_view.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);
    LocalizationBloc localizationBloc =
        BlocProvider.of<LocalizationBloc>(context);
    SignUpBloc signUpBloc = BlocProvider.of<SignUpBloc>(context);

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: signUpBloc.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: signUpBloc.nameController,
            decoration: InputDecoration(
              hintText: language.Name,
              prefixIcon: const Icon(Icons.person),
            ),
            validator: (value) => FormValidation.name(value, language),
          ),
          SizedBox(height: 10.h),
          TextFormField(
            controller: signUpBloc.emailController,
            decoration: InputDecoration(
              hintText: language.Mail,
              prefixIcon: const Icon(Icons.mail),
            ),
            validator: (value) => FormValidation.email(value, language),
          ),
          SizedBox(height: 10.h),
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return TextFormField(
                obscureText: signUpBloc.isHide,
                controller: signUpBloc.passwordController,
                decoration: InputDecoration(
                  hintText: language.Password,
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      signUpBloc.add(const SignUpEvent.changePassHide());
                    },
                    icon: Icon(
                      signUpBloc.isHide
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                validator: (value) => FormValidation.confirmPassword(
                    value, signUpBloc.confirmPasswordController.text, language),
              );
            },
          ),
          SizedBox(height: 10.h),
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return TextFormField(
                obscureText: signUpBloc.isHide,
                controller: signUpBloc.confirmPasswordController,
                decoration: InputDecoration(
                  hintText: language.Confrim_Password,
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      signUpBloc.add(const SignUpEvent.changePassHide());
                    },
                    icon: Icon(
                      signUpBloc.isHide
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                validator: (value) => FormValidation.confirmPassword(
                    value, signUpBloc.passwordController.text, language),
              );
            },
          ),
          SizedBox(height: 10.h),
          Directionality(
            textDirection: TextDirection.ltr,
            child: InternationalPhoneNumberInput(
              locale: localizationBloc.locale.languageCode,
              onInputValidated: (value) {
                signUpBloc.add(SignUpEvent.phoneValidChanged(value));
              },
              errorMessage: language.Phone_Number_Not_Valid,
              autoValidateMode: AutovalidateMode.onUserInteraction,
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
              onInputChanged: (PhoneNumber value) {
                signUpBloc.add(SignUpEvent.phoneFieldChanged(value));
              },
            ),
          )
        ],
      ),
    );
  }
}
