// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Language {
  Language();

  static Language? _current;

  static Language get current {
    assert(_current != null,
        'No instance of Language was loaded. Try to initialize the Language delegate before accessing Language.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Language> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Language();
      Language._current = instance;

      return instance;
    });
  }

  static Language of(BuildContext context) {
    final instance = Language.maybeOf(context);
    assert(instance != null,
        'No instance of Language present in the widget tree. Did you add Language.delegate in localizationsDelegates?');
    return instance!;
  }

  static Language? maybeOf(BuildContext context) {
    return Localizations.of<Language>(context, Language);
  }

  /// `Welcome Back`
  String get Welcome_Back {
    return Intl.message(
      'Welcome Back',
      name: 'Welcome_Back',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With Your Mail And Password`
  String get Sign_In_With_Your_Mail_And_Password {
    return Intl.message(
      'Sign In With Your Mail And Password',
      name: 'Sign_In_With_Your_Mail_And_Password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get Forgot_Password {
    return Intl.message(
      'Forgot Password',
      name: 'Forgot_Password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get Sign_In {
    return Intl.message(
      'Sign In',
      name: 'Sign_In',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get Create_Account {
    return Intl.message(
      'Create Account',
      name: 'Create_Account',
      desc: '',
      args: [],
    );
  }

  /// `Mail`
  String get Mail {
    return Intl.message(
      'Mail',
      name: 'Mail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get Confrim_Password {
    return Intl.message(
      'Confirm Password',
      name: 'Confrim_Password',
      desc: '',
      args: [],
    );
  }

  /// `Welcom To Commuter`
  String get Welcom_To_Commuter {
    return Intl.message(
      'Welcom To Commuter',
      name: 'Welcom_To_Commuter',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Search {
    return Intl.message(
      'Search',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Phone Verification`
  String get Phone_Verification {
    return Intl.message(
      'Phone Verification',
      name: 'Phone_Verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP Code Here`
  String get Enter_OTP_Code_Here {
    return Intl.message(
      'Enter OTP Code Here',
      name: 'Enter_OTP_Code_Here',
      desc: '',
      args: [],
    );
  }

  /// `Seconds Left`
  String get Seconds_Left {
    return Intl.message(
      'Seconds Left',
      name: 'Seconds_Left',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP Code`
  String get Resend_OTP_Code {
    return Intl.message(
      'Resend OTP Code',
      name: 'Resend_OTP_Code',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get Language_Name {
    return Intl.message(
      'English',
      name: 'Language_Name',
      desc: '',
      args: [],
    );
  }

  /// `Already Have An Account`
  String get Already_Have_An_Account {
    return Intl.message(
      'Already Have An Account',
      name: 'Already_Have_An_Account',
      desc: '',
      args: [],
    );
  }

  /// `Commuter`
  String get App_Name {
    return Intl.message(
      'Commuter',
      name: 'App_Name',
      desc: '',
      args: [],
    );
  }

  /// `Sign With Google`
  String get Sign_In_With_Google {
    return Intl.message(
      'Sign With Google',
      name: 'Sign_In_With_Google',
      desc: '',
      args: [],
    );
  }

  /// `Please Input Your Mail`
  String get Please_Input_Your_Mail {
    return Intl.message(
      'Please Input Your Mail',
      name: 'Please_Input_Your_Mail',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get Confirm {
    return Intl.message(
      'Confirm',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Language> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Language> load(Locale locale) => Language.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
