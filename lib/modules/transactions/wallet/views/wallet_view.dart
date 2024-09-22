import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  color: ColorManger.primary,
                  child: Container(
                    alignment: Alignment.center,
                    height: 75.h,
                    child: ListTile(
                      title: Text(
                        '465 SAR',
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP25B.copyWith(
                          color: ColorManger.primaryContainer,
                        ),
                      ),
                      subtitle: Text(
                        language.current_balance,
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP10B.copyWith(
                          color: ColorManger.primaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: ColorManger.colorScheme.errorContainer,
                  child: Container(
                    alignment: Alignment.center,
                    height: 75.h,
                    child: ListTile(
                      title: Text(
                        '250 SAR',
                        textAlign: TextAlign.center,
                        style: TextStyles.ts25B.copyWith(),
                      ),
                      subtitle: Text(
                        language.balance_used,
                        textAlign: TextAlign.center,
                        style: TextStyles.tsP10B.copyWith(
                          color: ColorManger.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: FilledButton.icon(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              foregroundColor: MaterialStatePropertyAll(Colors.green),
              side: MaterialStatePropertyAll(
                BorderSide(width: 2, color: Colors.green),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                showDragHandle: true,
                context: context,
                builder: (context) => ListView(
                  shrinkWrap: true,
                  children: [
                    CreditCardWidget(
                      cardBgColor: ColorManger.primaryContainer,
                      textStyle: TextStyles.tsP15B.copyWith(
                        color: ColorManger.primary,
                      ),
                      obscureCardCvv: false,
                      obscureCardNumber: false,
                      isHolderNameVisible: true,
                      cardNumber: '4574 5678 9012 3456',
                      expiryDate: '04/24',
                      cardHolderName: 'John Doe',
                      cvvCode: '123',
                      showBackView:
                          false, //true when you want to show cvv(back) view
                      onCreditCardWidgetChange: (
                        CreditCardBrand brand,
                      ) {}, // Callback for anytime credit card brand is changed
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: language.enter_amount,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          filled: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: FilledButton(
                        onPressed: () {},
                        child: Text(language.charge),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.add),
            label: Text(language.charge_balance),
          ),
        ),
        ListTile(
          title: Text(language.transactions),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ExpansionTile(
              leading: const Icon(Icons.arrow_drop_down_rounded),
              title: const Text('Commute 1 - 458'),
              subtitle: Text(
                Jiffy.now().add(minutes: 15).toNow().toString(),
              ),
              trailing: Text(
                '- 250 SAR',
                style: TextStyles.tsP12B.copyWith(
                  color: ColorManger.colorScheme.error,
                ),
              ),
              children: const [],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ExpansionTile(
              leading: const Icon(Icons.arrow_drop_down_rounded),
              title: Text(language.added_to_balance),
              subtitle: Text(
                Jiffy.now().add(minutes: 26).toNow().toString(),
              ),
              trailing: Text(
                '+ 150 SAR',
                style: TextStyles.tsP12B,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
