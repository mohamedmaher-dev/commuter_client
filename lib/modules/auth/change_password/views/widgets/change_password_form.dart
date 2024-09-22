part of '../change_password_view.dart';

class _ChangePasswordForm extends StatelessWidget {
  const _ChangePasswordForm();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    final ChangePasswordBloc changePasswordBloc =
        BlocProvider.of<ChangePasswordBloc>(context);
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return Form(
          key: changePasswordBloc.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                controller: changePasswordBloc.passwordController,
                decoration: InputDecoration(
                  hintText: language.password,
                  prefixIcon: const Icon(
                    Icons.password,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      changePasswordBloc
                          .add(const ChangePasswordEvent.changeHidePass());
                    },
                    icon: Icon(
                      changePasswordBloc.isHide
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                obscureText: changePasswordBloc.isHide,
                validator: (value) => FormValidation.confirmPassword(
                  value,
                  changePasswordBloc.confirmPasswordController.text,
                  language,
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                controller: changePasswordBloc.confirmPasswordController,
                decoration: InputDecoration(
                  hintText: language.confrim_password,
                  prefixIcon: const Icon(
                    Icons.password,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      changePasswordBloc
                          .add(const ChangePasswordEvent.changeHidePass());
                    },
                    icon: Icon(
                      changePasswordBloc.isHide
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                obscureText: changePasswordBloc.isHide,
                validator: (value) => FormValidation.confirmPassword(
                  value,
                  changePasswordBloc.passwordController.text,
                  language,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
