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

  /// `English`
  String get current_language_value {
    return Intl.message(
      'English',
      name: 'current_language_value',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcome_back {
    return Intl.message(
      'Welcome back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with your mail and password`
  String get sign_in_with_your_mail_and_password {
    return Intl.message(
      'Sign in with your mail and password',
      name: 'sign_in_with_your_mail_and_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create_account {
    return Intl.message(
      'Create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Mail`
  String get mail {
    return Intl.message(
      'Mail',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confrim_password {
    return Intl.message(
      'Confirm password',
      name: 'confrim_password',
      desc: '',
      args: [],
    );
  }

  /// `Welcom to Commuter`
  String get welcom_to_commuter {
    return Intl.message(
      'Welcom to Commuter',
      name: 'welcom_to_commuter',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Phone verification`
  String get phone_verification {
    return Intl.message(
      'Phone verification',
      name: 'phone_verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP code here`
  String get enter_otp_code_here {
    return Intl.message(
      'Enter OTP code here',
      name: 'enter_otp_code_here',
      desc: '',
      args: [],
    );
  }

  /// `Seconds left`
  String get seconds_left {
    return Intl.message(
      'Seconds left',
      name: 'seconds_left',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP code`
  String get resend_otp_code {
    return Intl.message(
      'Resend OTP code',
      name: 'resend_otp_code',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Commuter`
  String get app_name {
    return Intl.message(
      'Commuter',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Please input your mail`
  String get please_input_your_mail {
    return Intl.message(
      'Please input your mail',
      name: 'please_input_your_mail',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `You cannot leave the email empty`
  String get you_cannot_leave_the_email_empty {
    return Intl.message(
      'You cannot leave the email empty',
      name: 'you_cannot_leave_the_email_empty',
      desc: '',
      args: [],
    );
  }

  /// `You cannot leave the password empty`
  String get you_cannot_leave_the_password_empty {
    return Intl.message(
      'You cannot leave the password empty',
      name: 'you_cannot_leave_the_password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please write your email correctly`
  String get please_write_your_email_correctly {
    return Intl.message(
      'Please write your email correctly',
      name: 'please_write_your_email_correctly',
      desc: '',
      args: [],
    );
  }

  /// `The password must be greater than or equal to 6 characters`
  String get the_password_must_be_greater_than_or_equal_to_6_characters {
    return Intl.message(
      'The password must be greater than or equal to 6 characters',
      name: 'the_password_must_be_greater_than_or_equal_to_6_characters',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `This account not active`
  String get this_account_not_active {
    return Intl.message(
      'This account not active',
      name: 'this_account_not_active',
      desc: '',
      args: [],
    );
  }

  /// `Failure`
  String get failure {
    return Intl.message(
      'Failure',
      name: 'failure',
      desc: '',
      args: [],
    );
  }

  /// `Timeout`
  String get timeout {
    return Intl.message(
      'Timeout',
      name: 'timeout',
      desc: '',
      args: [],
    );
  }

  /// `You cannot verify the code because timeout`
  String get you_cannot_verify_the_code_because_timeout {
    return Intl.message(
      'You cannot verify the code because timeout',
      name: 'you_cannot_verify_the_code_because_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Verify code`
  String get verify_code {
    return Intl.message(
      'Verify code',
      name: 'verify_code',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get change_password {
    return Intl.message(
      'Change password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Please input your new password and confirm it`
  String get please_input_your_new_password_and_confirm_it {
    return Intl.message(
      'Please input your new password and confirm it',
      name: 'please_input_your_new_password_and_confirm_it',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwords_must_match {
    return Intl.message(
      'Passwords must match',
      name: 'passwords_must_match',
      desc: '',
      args: [],
    );
  }

  /// `Name field must not be empty`
  String get name_field_must_not_be_empty {
    return Intl.message(
      'Name field must not be empty',
      name: 'name_field_must_not_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Phone number not valid`
  String get phone_number_not_valid {
    return Intl.message(
      'Phone number not valid',
      name: 'phone_number_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `The password has been changed successfully`
  String get the_password_has_been_changed_successfully {
    return Intl.message(
      'The password has been changed successfully',
      name: 'the_password_has_been_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `No chats found`
  String get no_chats_found {
    return Intl.message(
      'No chats found',
      name: 'no_chats_found',
      desc: '',
      args: [],
    );
  }

  /// `Enter your message`
  String get enter_your_message {
    return Intl.message(
      'Enter your message',
      name: 'enter_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Create contract`
  String get create_contract {
    return Intl.message(
      'Create contract',
      name: 'create_contract',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get total_price {
    return Intl.message(
      'Total price',
      name: 'total_price',
      desc: '',
      args: [],
    );
  }

  /// `Number of months`
  String get number_of_months {
    return Intl.message(
      'Number of months',
      name: 'number_of_months',
      desc: '',
      args: [],
    );
  }

  /// `No messages yet , start a conversation`
  String get no_messages_yet {
    return Intl.message(
      'No messages yet , start a conversation',
      name: 'no_messages_yet',
      desc: '',
      args: [],
    );
  }

  /// `Allow permissions`
  String get allow_permissions {
    return Intl.message(
      'Allow permissions',
      name: 'allow_permissions',
      desc: '',
      args: [],
    );
  }

  /// `Whare to go?`
  String get whare_to_go {
    return Intl.message(
      'Whare to go?',
      name: 'whare_to_go',
      desc: '',
      args: [],
    );
  }

  /// `Nearby commuters`
  String get nearby_commuters {
    return Intl.message(
      'Nearby commuters',
      name: 'nearby_commuters',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Commute Name`
  String get commute_name {
    return Intl.message(
      'Commute Name',
      name: 'commute_name',
      desc: '',
      args: [],
    );
  }

  /// `Not selected`
  String get not_selected {
    return Intl.message(
      'Not selected',
      name: 'not_selected',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Add commute`
  String get add_commute {
    return Intl.message(
      'Add commute',
      name: 'add_commute',
      desc: '',
      args: [],
    );
  }

  /// `Location of the trip`
  String get location_of_the_trip {
    return Intl.message(
      'Location of the trip',
      name: 'location_of_the_trip',
      desc: '',
      args: [],
    );
  }

  /// `Date of the trip`
  String get date_of_the_trip {
    return Intl.message(
      'Date of the trip',
      name: 'date_of_the_trip',
      desc: '',
      args: [],
    );
  }

  /// `Add schedules trip`
  String get add_schedules_trip {
    return Intl.message(
      'Add schedules trip',
      name: 'add_schedules_trip',
      desc: '',
      args: [],
    );
  }

  /// `Pin`
  String get pin {
    return Intl.message(
      'Pin',
      name: 'pin',
      desc: '',
      args: [],
    );
  }

  /// `Unpin`
  String get unpin {
    return Intl.message(
      'Unpin',
      name: 'unpin',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Commuter name`
  String get commuter_name {
    return Intl.message(
      'Commuter name',
      name: 'commuter_name',
      desc: '',
      args: [],
    );
  }

  /// `My commutes`
  String get my_commutes {
    return Intl.message(
      'My commutes',
      name: 'my_commutes',
      desc: '',
      args: [],
    );
  }

  /// `Commutes`
  String get commutes {
    return Intl.message(
      'Commutes',
      name: 'commutes',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled trips`
  String get scheduled_trips {
    return Intl.message(
      'Scheduled trips',
      name: 'scheduled_trips',
      desc: '',
      args: [],
    );
  }

  /// `No commutes found, Please add one`
  String get no_commutes_found {
    return Intl.message(
      'No commutes found, Please add one',
      name: 'no_commutes_found',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filter_by {
    return Intl.message(
      'Filter by',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `Choose your preference`
  String get choose_your_preference {
    return Intl.message(
      'Choose your preference',
      name: 'choose_your_preference',
      desc: '',
      args: [],
    );
  }

  /// `Best match`
  String get best_match {
    return Intl.message(
      'Best match',
      name: 'best_match',
      desc: '',
      args: [],
    );
  }

  /// `Carpooling`
  String get carpooling {
    return Intl.message(
      'Carpooling',
      name: 'carpooling',
      desc: '',
      args: [],
    );
  }

  /// `Female only`
  String get female_only {
    return Intl.message(
      'Female only',
      name: 'female_only',
      desc: '',
      args: [],
    );
  }

  /// `One way`
  String get one_way {
    return Intl.message(
      'One way',
      name: 'one_way',
      desc: '',
      args: [],
    );
  }

  /// `Two way`
  String get two_way {
    return Intl.message(
      'Two way',
      name: 'two_way',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Read`
  String get read {
    return Intl.message(
      'Read',
      name: 'read',
      desc: '',
      args: [],
    );
  }

  /// `Readed`
  String get readed {
    return Intl.message(
      'Readed',
      name: 'readed',
      desc: '',
      args: [],
    );
  }

  /// `New notifications`
  String get new_notifications {
    return Intl.message(
      'New notifications',
      name: 'new_notifications',
      desc: '',
      args: [],
    );
  }

  /// `No notifications`
  String get no_notifications {
    return Intl.message(
      'No notifications',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `My location`
  String get my_location {
    return Intl.message(
      'My location',
      name: 'my_location',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Not available`
  String get not_available {
    return Intl.message(
      'Not available',
      name: 'not_available',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Enter text`
  String get enter_text {
    return Intl.message(
      'Enter text',
      name: 'enter_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose you picture`
  String get choose_your_picture {
    return Intl.message(
      'Choose you picture',
      name: 'choose_your_picture',
      desc: '',
      args: [],
    );
  }

  /// `From gallery`
  String get from_gallery {
    return Intl.message(
      'From gallery',
      name: 'from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `From camera`
  String get from_camera {
    return Intl.message(
      'From camera',
      name: 'from_camera',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get sign_out {
    return Intl.message(
      'Sign out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Failure to update profile`
  String get failure_to_update_profile {
    return Intl.message(
      'Failure to update profile',
      name: 'failure_to_update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Please select an image`
  String get please_select_an_image {
    return Intl.message(
      'Please select an image',
      name: 'please_select_an_image',
      desc: '',
      args: [],
    );
  }

  /// `Update profile`
  String get update_profile {
    return Intl.message(
      'Update profile',
      name: 'update_profile',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Night mode`
  String get night_mode {
    return Intl.message(
      'Night mode',
      name: 'night_mode',
      desc: '',
      args: [],
    );
  }

  /// `Current language`
  String get current_language {
    return Intl.message(
      'Current language',
      name: 'current_language',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get my_profile {
    return Intl.message(
      'My profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Delete my profile`
  String get delete_my_profile {
    return Intl.message(
      'Delete my profile',
      name: 'delete_my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete the profile?`
  String get are_you_sure_you_want_to_delete_the_profile {
    return Intl.message(
      'Are you sure you want to delete the profile?',
      name: 'are_you_sure_you_want_to_delete_the_profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Contract number`
  String get contract_number {
    return Intl.message(
      'Contract number',
      name: 'contract_number',
      desc: '',
      args: [],
    );
  }

  /// `Contract date`
  String get contract_date {
    return Intl.message(
      'Contract date',
      name: 'contract_date',
      desc: '',
      args: [],
    );
  }

  /// `Commute ID`
  String get commute_id {
    return Intl.message(
      'Commute ID',
      name: 'commute_id',
      desc: '',
      args: [],
    );
  }

  /// `Commute location`
  String get commute_location {
    return Intl.message(
      'Commute location',
      name: 'commute_location',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Contracts`
  String get contracts {
    return Intl.message(
      'Contracts',
      name: 'contracts',
      desc: '',
      args: [],
    );
  }

  /// `Current balance`
  String get current_balance {
    return Intl.message(
      'Current balance',
      name: 'current_balance',
      desc: '',
      args: [],
    );
  }

  /// `Balance used`
  String get balance_used {
    return Intl.message(
      'Balance used',
      name: 'balance_used',
      desc: '',
      args: [],
    );
  }

  /// `Enter amount`
  String get enter_amount {
    return Intl.message(
      'Enter amount',
      name: 'enter_amount',
      desc: '',
      args: [],
    );
  }

  /// `Charge`
  String get charge {
    return Intl.message(
      'Charge',
      name: 'charge',
      desc: '',
      args: [],
    );
  }

  /// `Charge balance`
  String get charge_balance {
    return Intl.message(
      'Charge balance',
      name: 'charge_balance',
      desc: '',
      args: [],
    );
  }

  /// `Transaction history`
  String get transaction_history {
    return Intl.message(
      'Transaction history',
      name: 'transaction_history',
      desc: '',
      args: [],
    );
  }

  /// `Added to balance`
  String get added_to_balance {
    return Intl.message(
      'Added to balance',
      name: 'added_to_balance',
      desc: '',
      args: [],
    );
  }

  /// `Send request`
  String get send_request {
    return Intl.message(
      'Send request',
      name: 'send_request',
      desc: '',
      args: [],
    );
  }

  /// `Nearest station`
  String get nearest_station {
    return Intl.message(
      'Nearest station',
      name: 'nearest_station',
      desc: '',
      args: [],
    );
  }

  /// `Send ride request`
  String get send_ride_request {
    return Intl.message(
      'Send ride request',
      name: 'send_ride_request',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Enter location`
  String get enter_location {
    return Intl.message(
      'Enter location',
      name: 'enter_location',
      desc: '',
      args: [],
    );
  }

  /// `Search for place`
  String get search_for_place {
    return Intl.message(
      'Search for place',
      name: 'search_for_place',
      desc: '',
      args: [],
    );
  }

  /// `Set on map`
  String get set_on_map {
    return Intl.message(
      'Set on map',
      name: 'set_on_map',
      desc: '',
      args: [],
    );
  }

  /// `Current location`
  String get current_location {
    return Intl.message(
      'Current location',
      name: 'current_location',
      desc: '',
      args: [],
    );
  }

  /// `Where to?`
  String get where_to {
    return Intl.message(
      'Where to?',
      name: 'where_to',
      desc: '',
      args: [],
    );
  }

  /// `Enter pickup location`
  String get enter_pickup_location {
    return Intl.message(
      'Enter pickup location',
      name: 'enter_pickup_location',
      desc: '',
      args: [],
    );
  }

  /// `Enter landing location`
  String get enter_landing_location {
    return Intl.message(
      'Enter landing location',
      name: 'enter_landing_location',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Send ride request success`
  String get send_ride_request_success {
    return Intl.message(
      'Send ride request success',
      name: 'send_ride_request_success',
      desc: '',
      args: [],
    );
  }

  /// `Send ride request failure`
  String get send_ride_request_failure {
    return Intl.message(
      'Send ride request failure',
      name: 'send_ride_request_failure',
      desc: '',
      args: [],
    );
  }

  /// `Join commute`
  String get join_commute {
    return Intl.message(
      'Join commute',
      name: 'join_commute',
      desc: '',
      args: [],
    );
  }

  /// `Pickup`
  String get pickup {
    return Intl.message(
      'Pickup',
      name: 'pickup',
      desc: '',
      args: [],
    );
  }

  /// `Dropoff`
  String get dropoff {
    return Intl.message(
      'Dropoff',
      name: 'dropoff',
      desc: '',
      args: [],
    );
  }

  /// `Pickup and dropoff`
  String get pickup_and_dropoff {
    return Intl.message(
      'Pickup and dropoff',
      name: 'pickup_and_dropoff',
      desc: '',
      args: [],
    );
  }

  /// `Matching`
  String get matching {
    return Intl.message(
      'Matching',
      name: 'matching',
      desc: '',
      args: [],
    );
  }

  /// `Car brand - Model`
  String get car_brand_Model {
    return Intl.message(
      'Car brand - Model',
      name: 'car_brand_Model',
      desc: '',
      args: [],
    );
  }

  /// `Time left`
  String get time_left {
    return Intl.message(
      'Time left',
      name: 'time_left',
      desc: '',
      args: [],
    );
  }

  /// `No nearby commuters right now, please try again later`
  String get no_nearby_commuters_right_now_try_again_later {
    return Intl.message(
      'No nearby commuters right now, please try again later',
      name: 'no_nearby_commuters_right_now_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `Joined commute successfully`
  String get joined_commute_successfully {
    return Intl.message(
      'Joined commute successfully',
      name: 'joined_commute_successfully',
      desc: '',
      args: [],
    );
  }

  /// `No schedules trips found, please add one`
  String get no_schedules_trips_found_please_add_one {
    return Intl.message(
      'No schedules trips found, please add one',
      name: 'no_schedules_trips_found_please_add_one',
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
      Locale.fromSubtags(languageCode: 'ur'),
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
