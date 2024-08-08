import 'package:commuter_client/core/localization/generated/l10n.dart';

class FormValidation {
  FormValidation._();
  static String? email(String? value, Language language) {
    if (value!.isEmpty) {
      return language.You_Cannot_Leave_The_Email_Empty;
    } else {
      final regExp = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!regExp.hasMatch(value)) {
        return language.Please_Write_Your_Email_Correctly;
      } else {
        return null;
      }
    }
  }

  static String? name(String? value, Language language) {
    if (value!.isEmpty) {
      return language.You_Cannot_Leave_The_Password_Empty;
    }
    return null;
  }

  static String? password(String? value, Language language) {
    if (value!.isEmpty) {
      return language.You_Cannot_Leave_The_Password_Empty;
    } else {
      if (value.length < 6) {
        return language
            .The_Password_Must_Be_Greater_Than_Or_Equal_To_6_Characters;
      } else {
        return null;
      }
    }
  }

  static String? confirmPassword(
      String? value1, String? value2, Language language) {
    if (value1!.isEmpty) {
      return language.You_Cannot_Leave_The_Password_Empty;
    } else {
      if (value1.length < 6) {
        return language
            .The_Password_Must_Be_Greater_Than_Or_Equal_To_6_Characters;
      } else if (value1 != value2) {
        return language.Passwords_Must_Match;
      } else {
        return null;
      }
    }
  }
}
