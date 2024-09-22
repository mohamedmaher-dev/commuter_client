import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_tabs/nearby_commuters_tabs_cubit.dart';
import 'package:commuter_client/modules/nearby_commuters/data/nearby_commuters_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../controllers/nearby_commuters_bloc/nearby_commuters_bloc.dart';
import 'bottom_sheet_filter_body.dart';

class NearbyCommutersTabsBody extends StatelessWidget {
  const NearbyCommutersTabsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<NearbyCommutersTabsCubit>(context);
    final bloc = BlocProvider.of<NearbyCommutersBloc>(context);
    final language = Language.of(context);
    return BlocBuilder<NearbyCommutersTabsCubit, NearbyCommutersTabsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          success: (tab) {
            return Column(
              children: [
                CupertinoSlidingSegmentedControl(
                  thumbColor: ColorManger.primaryContainer,
                  children: {
                    NearbyCommutersTabs.all: Text(language.all),
                    NearbyCommutersTabs.online: Text(language.online),
                    NearbyCommutersTabs.upcoming: Text(language.upcoming),
                    NearbyCommutersTabs.offline: Text(language.offline),
                  },
                  groupValue: tab,
                  onValueChanged: (value) {
                    cubit.changeTab(value!);
                    bloc.add(NearbyCommutersEvent.changeTab(value));
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        elevation: MaterialStatePropertyAll(0),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => BottomSheetFilterBody(bloc),
                        );
                      },
                      icon: const Icon(CupertinoIcons.slider_horizontal_3),
                      label: BlocBuilder<NearbyCommutersBloc,
                          NearbyCommutersState>(
                        builder: (context, state) {
                          return Text(
                            "${language.filter_by} : ${getFilterName(bloc.filter.runtimeType, context)}",
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

String getFilterName(Type filterTye, BuildContext context) {
  final language = Language.of(context);
  return switch (filterTye) {
    const (BestMatchNearbyCommuters) => language.best_match,
    const (CarpoolNearbyCommuters) => language.carpooling,
    const (FemaleOnlyNearbyCommuters) => language.female_only,
    const (OneWayNearbyCommuters) => language.one_way,
    const (TwoWayNearbyCommuters) => language.two_way,
    _ => language.best_match
  };
}
