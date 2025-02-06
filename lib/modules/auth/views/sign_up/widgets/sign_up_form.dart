part of '../sign_up_view.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    Language language = Language.of(context);

    SignUpBloc signUpBloc = BlocProvider.of<SignUpBloc>(context);

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: signUpBloc.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: signUpBloc.nameController,
            decoration: InputDecoration(
              hintText: language.name,
              prefixIcon: const Icon(Icons.person),
            ),
            validator: (value) => FormValidation.name(value, language),
          ),
          SizedBox(height: 10.h),
          TextFormField(
            controller: signUpBloc.emailController,
            decoration: InputDecoration(
              hintText: language.mail,
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
                  hintText: language.password,
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
                  hintText: language.change_password,
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
              onInputValidated: (value) {
                signUpBloc.add(SignUpEvent.phoneValidChanged(value));
              },
              errorMessage: language.phone_number_not_valid,
              autoValidateMode: AutovalidateMode.onUserInteraction,
              inputDecoration: InputDecoration(
                hintText: language.phone,
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
                filled: true,
                hintText: language.search,
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
