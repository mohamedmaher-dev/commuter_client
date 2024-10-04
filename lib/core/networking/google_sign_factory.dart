import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignFactory {
  GoogleSignFactory._();
  static GoogleSignIn? _googleSign;
  static const List<String> _scopes = <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ];
  static instance() {
    _googleSign ??= GoogleSignIn(
      scopes: _scopes,
    );
    return _googleSign!;
  }
}
