import 'package:commuter_client/core/localization/generated/l10n.dart';

class FormValidation {
  FormValidation._();
  static String? email(String? value, Language language) {
    if (value!.isEmpty) {
      return language.you_cannot_leave_the_email_empty;
    } else {
      final regExp = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!regExp.hasMatch(value)) {
        return language.please_write_your_email_correctly;
      } else {
        return null;
      }
    }
  }

  static String? name(String? value, Language language) {
    if (value!.isEmpty) {
      return language.you_cannot_leave_the_password_empty;
    }
    return null;
  }

  static String? password(String? value, Language language) {
    if (value!.isEmpty) {
      return language.you_cannot_leave_the_password_empty;
    } else {
      if (value.length < 6) {
        return language
            .the_password_must_be_greater_than_or_equal_to_6_characters;
      } else {
        return null;
      }
    }
  }

  static String? confirmPassword(
      String? value1, String? value2, Language language) {
    if (value1!.isEmpty) {
      return language.you_cannot_leave_the_password_empty;
    } else {
      if (value1.length < 6) {
        return language
            .the_password_must_be_greater_than_or_equal_to_6_characters;
      } else if (value1 != value2) {
        return language.passwords_must_match;
      } else {
        return null;
      }
    }
  }
}
