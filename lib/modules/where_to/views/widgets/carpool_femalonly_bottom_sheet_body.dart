import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/modules/where_to/controllers/ride_request_switch_cubit/ride_request_switch_cubit.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_bloc/where_to_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_panel/where_to_panel_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/localization/generated/l10n.dart';

class CarPoolFemaleOnlyBottomSheetBody extends StatelessWidget {
  const CarPoolFemaleOnlyBottomSheetBody({
    super.key,
    required this.whereToPanelBloc,
    required this.whereToBloc,
    required this.pickup,
    required this.dropoff,
  });
  final WhereToPanelBloc whereToPanelBloc;
  final WhereToBloc whereToBloc;
  final LatLng? pickup;
  final LatLng dropoff;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RideRequestSwitchCubit(),
      child: _Body(
        whereToBloc: whereToBloc,
        pickup: pickup,
        dropoff: dropoff,
        whereToPanelBloc: whereToPanelBloc,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.whereToBloc,
    required this.whereToPanelBloc,
    required this.pickup,
    required this.dropoff,
  });
  final WhereToPanelBloc whereToPanelBloc;

  final WhereToBloc whereToBloc;
  final LatLng? pickup;
  final LatLng dropoff;
  @override
  Widget build(BuildContext context) {
    final rideRequestSwitchCubit = context.read<RideRequestSwitchCubit>();
    final language = Language.of(context);
    return BlocBuilder<RideRequestSwitchCubit, RideRequestSwitchState>(
      builder: (context, state) {
        return ListView(
          padding: EdgeInsets.all(10.w),
          shrinkWrap: true,
          children: [
            SwitchListTile(
              title: Row(
                children: [
                  const Icon(Icons.female),
                  SizedBox(width: 10.w),
                  Text(language.female_only),
                ],
              ),
              value: rideRequestSwitchCubit.femaleOnly,
              onChanged: (value) {
                rideRequestSwitchCubit.toggleFemaleOnly();
              },
            ),
            SwitchListTile(
              title: Row(
                children: [
                  const Icon(Icons.groups),
                  SizedBox(width: 10.w),
                  Text(language.carpooling),
                ],
              ),
              value: rideRequestSwitchCubit.carPooling,
              onChanged: (value) {
                rideRequestSwitchCubit.toggleCarPooling();
              },
            ),
            FilledButton(
              onPressed: () {
                whereToBloc.add(
                  WhereToEvent.onSendRideRequest(
                    dropoff: dropoff,
                    pickup: pickup,
                    carPooling: true,
                    femaleOnly: true,
                  ),
                );
                whereToPanelBloc.add(const WhereToPanelEvent.started());
                AppRouter.pop(context: context);
              },
              child: Text(language.send_request),
            ),
          ],
        );
      },
    );
  }
}
