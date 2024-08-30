import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;

import '../../../core/themes/controller/app_theme_bloc.dart';

part 'widgets/account_body.dart';
part 'widgets/loading_body.dart';
part 'widgets/success_body.dart';
part 'widgets/failure_body.dart';
part 'widgets/pick_image_sheet.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProfileView();
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _SuccessBody(),
    );
  }
}
