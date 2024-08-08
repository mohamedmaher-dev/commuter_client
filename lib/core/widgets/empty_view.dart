import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/controller/app_theme_bloc.dart';
import '../themes/text_styles.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(icon, size: 50.w, color: ColorManger.primary),
        Text(
          text,
          style: TextStyles.tsP10N,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
