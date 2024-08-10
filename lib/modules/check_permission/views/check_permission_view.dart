// ignore_for_file: use_build_context_synchronously

import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../core/location/location_permission.dart';

class CheckPermissionView extends StatelessWidget {
  const CheckPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Lottie.asset(AssetsManger.location),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: FilledButton(
              onPressed: () async {
                final permissionIsAllowed = await checkPermission();
                if (permissionIsAllowed) {
                  AppRouter.pushReplacement(
                      context: context, page: Pages.splash);
                }
              },
              child: const Text('Allow permission'),
            ),
          ),
        ],
      ),
    );
  }
}
