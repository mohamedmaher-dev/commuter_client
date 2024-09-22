import 'package:commuter_client/modules/transactions/wallet/views/wallet_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../contracts/views/contracts_view.dart';

class RidesView extends StatefulWidget {
  const RidesView({super.key});

  @override
  State<RidesView> createState() => _RidesViewState();
}

class _RidesViewState extends State<RidesView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: CupertinoSlidingSegmentedControl(
              backgroundColor: ColorManger.textFormbBackground,
              thumbColor: ColorManger.primaryContainer,
              groupValue: currentIndex,
              children: {
                0: Text(language.wallet),
                1: Text(language.contracts),
              },
              onValueChanged: (value) {
                setState(() {
                  currentIndex = value!;
                });
              },
            ),
          ),
          if (currentIndex == 0) const WalletView(),
          if (currentIndex == 1) const ContractsView(),
        ],
      ),
    );
  }
}
