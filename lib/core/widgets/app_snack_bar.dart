import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSnackBar {
  const AppSnackBar._();
  static show({
    required String title,
    required String msg,
    required ContentType type,
    required BuildContext context,
  }) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.fixed,
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 5),
      padding: EdgeInsets.all(25.w),
      content: AwesomeSnackbarContent(
        title: title,
        message: msg,
        contentType: type,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
