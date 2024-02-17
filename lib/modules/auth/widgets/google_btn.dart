import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/assets_manger.dart';

class GoogleBTN extends StatelessWidget {
  const GoogleBTN({super.key, required this.onPressed, required this.language});
  final Language language;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: SvgPicture.asset(
        AssetsManger.googleIcon,
        height: 30.h,
      ),
      label: Text(language.Sign_In_With_Google),
      onPressed: onPressed,
    );
  }
}
