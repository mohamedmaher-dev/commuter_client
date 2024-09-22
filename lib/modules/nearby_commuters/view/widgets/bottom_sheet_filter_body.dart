import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_bloc/nearby_commuters_bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/data/nearby_commuters_filter.dart';
import 'package:flutter/material.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';

class BottomSheetFilterBody extends StatelessWidget {
  const BottomSheetFilterBody(this.bloc, {super.key});
  final NearbyCommutersBloc bloc;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    onChanged(filter) {
      filter as Type;
      bloc.add(NearbyCommutersEvent.changeFilter(filter));
      Navigator.pop(context);
    }

    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(
            textAlign: TextAlign.center,
            language.filter_by,
            style: TextStyles.tsP15B,
          ),
          subtitle: Text(
            textAlign: TextAlign.center,
            language.choose_your_preference,
          ),
        ),
        RadioListTile<Type>(
          groupValue: bloc.filter.runtimeType,
          onChanged: onChanged,
          value: BestMatchNearbyCommuters,
          title: Text(language.best_match),
        ),
        RadioListTile<Type>(
          groupValue: bloc.filter.runtimeType,
          onChanged: onChanged,
          value: CarpoolNearbyCommuters,
          title: Text(language.carpooling),
        ),
        RadioListTile<Type>(
          groupValue: bloc.filter.runtimeType,
          onChanged: onChanged,
          value: FemaleOnlyNearbyCommuters,
          title: Text(language.female_only),
        ),
        RadioListTile<Type>(
          groupValue: bloc.filter.runtimeType,
          onChanged: onChanged,
          value: OneWayNearbyCommuters,
          title: Text(language.one_way),
        ),
        RadioListTile<Type>(
          groupValue: bloc.filter.runtimeType,
          onChanged: onChanged,
          value: TwoWayNearbyCommuters,
          title: Text(language.two_way),
        ),
      ],
    );
  }
}
