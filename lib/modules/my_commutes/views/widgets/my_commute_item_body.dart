import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/modules/my_commutes/controller/commutes_bloc/commutes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class MyCommuteItemBody extends StatelessWidget {
  const MyCommuteItemBody({super.key, required this.commute});
  final LocalCommuteModel commute;

  @override
  Widget build(BuildContext context) {
    final commutesBloc = BlocProvider.of<CommutesBloc>(context);
    final language = Language.of(context);
    return Card(
      child: Center(
        child: ListTile(
          leading: commute.isPinned ? const Icon(Icons.push_pin_rounded) : null,
          trailing: PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            itemBuilder: (contextPopup) => [
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      commutesBloc
                          .add(CommutesEvent.changePin(commute: commute));
                      AppRouter.pop(context: contextPopup);
                    },
                    icon: Icon(
                      commute.isPinned
                          ? Icons.push_pin
                          : Icons.push_pin_outlined,
                    ),
                    label: Text(
                      commute.isPinned ? language.unpin : language.pin,
                    ),
                  ),
                ),
              ),
              PopupMenuItem(
                child: Center(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        ColorManger.red,
                      ),
                    ),
                    onPressed: () {
                      commutesBloc
                          .add(CommutesEvent.deleteCommute(commute: commute));
                      AppRouter.pop(context: contextPopup);
                    },
                    icon: const Icon(Icons.delete),
                    label: Text(language.delete),
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            commute.commuteName,
            style: TextStyles.tsP15B,
          ),
          subtitle: Text(language.commute_name),
        ),
      ),
    );
  }
}
