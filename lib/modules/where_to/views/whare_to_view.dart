import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:blur/blur.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/core/localization/generated/l10n.dart';
import 'package:commuter_client/core/location/location_service.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/widgets/profile_rating_bar.dart';
import 'package:commuter_client/modules/app_map/controllers/app_map/app_map_bloc.dart';
import 'package:commuter_client/modules/app_map/view/app_map_view.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/chat_room_args_model.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_bloc/nearby_commuters_bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/data/models/nearby_commuters_response_model.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_bloc/where_to_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_my_commutes_bloc/where_to_my_commutes_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_panel/where_to_panel_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_switch_cubit/where_to_switch_cubit.dart';
import 'package:commuter_client/modules/where_to/views/widgets/carpool_femalonly_bottom_sheet_body.dart';
import 'package:commuter_client/modules/where_to/views/widgets/where_to_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:badges/badges.dart' as badges;
import 'package:jiffy/jiffy.dart';
import '../../../core/themes/app_theme_controller.dart';
import '../../../core/widgets/app_snack_bar.dart';
import '../../../core/widgets/pop_loading.dart';
import '../../../core/widgets/profile_image.dart';
part 'widgets/custom_shedule_chips.dart';
part 'widgets/custom_commute_chips.dart';
part 'widgets/my_commutes_body_view.dart';
part 'widgets/actions_body.dart';
part 'widgets/map_view.dart';
part 'widgets/set_on_map_action_btn.dart';
part 'widgets/send_ride_request_btn.dart';
part 'widgets/nearby_commuters_actions.dart';
part 'widgets/nearest_stations_btn.dart';
part 'widgets/where_to_nearby_commuters_bottom_sheet_body.dart';

class WhereToView extends StatelessWidget {
  const WhereToView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<WhereToBloc>(),
        ),
        BlocProvider(
          create: (context) => di<WhereToPanelBloc>(),
        ),
        BlocProvider(
          create: (context) => di<WhereToSwitchCubit>(),
        ),
        BlocProvider(
          create: (context) => di<WhereToMyCommutesBloc>()
            ..add(const WhereToMyCommutesEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              di<AppMapBloc>()..add(const AppMapEvent.started(autoMove: false)),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => di<NearbyCommutersBloc>()
            ..add(const NearbyCommutersEvent.started()),
        ),
      ],
      child: const _WhareTo(),
    );
  }
}

class _WhareTo extends StatelessWidget {
  const _WhareTo();
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WhereToBloc, WhereToState>(
          listener: listenerWhereTo,
        ),
        BlocListener<NearbyCommutersBloc, NearbyCommutersState>(
          listener: (listenerNearbyCommuters),
        ),
        BlocListener<WhereToSwitchCubit, WhereToSwitchState>(
          listener: (context, state) {
            setMarkers(context);
          },
        ),
      ],
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const _ActionsBody(),
        ),
        resizeToAvoidBottomInset: false,
        primary: true,
        body: const _MapView(),
      ),
    );
  }
}

void Function(BuildContext, WhereToState) listenerWhereTo = (context, state) {
  final Language language = Language.of(context);
  PopLoading.dismiss();
  state.whenOrNull(popLoading: () {
    PopLoading.show();
  }, sendRideRequestSuccess: () {
    AppSnackBar.show(
      title: language.success,
      msg: language.send_ride_request_success,
      type: ContentType.success,
      context: context,
    );
  }, sendRideRequestFailure: () {
    AppSnackBar.show(
      title: language.failure,
      msg: language.send_ride_request_failure,
      type: ContentType.failure,
      context: context,
    );
  });
};

void Function(BuildContext, NearbyCommutersState) listenerNearbyCommuters =
    (context, state) {
  state.whenOrNull(
    success: (list) {
      setMarkers(context);
    },
  );
};

void setMarkers(BuildContext context) {
  final AppMapBloc appMapBloc = BlocProvider.of<AppMapBloc>(context);
  final whereToSwitchCubit = BlocProvider.of<WhereToSwitchCubit>(context);
  final nearbyCommuters = BlocProvider.of<NearbyCommutersBloc>(context);
  final list = nearbyCommuters.commuters
      .where(
        (element) =>
            element.commute.carpool == whereToSwitchCubit.carPooling &&
            element.commute.isFemaleOnly == whereToSwitchCubit.femaleOnly,
      )
      .toList();
  final Set<Marker> markers = {};
  for (var element in list) {
    markers.add(
      Marker(
        markerId: MarkerId(element.commute.id),
        position: LatLng(
          element.commute.pickupLocation.latitude,
          element.commute.pickupLocation.longitude,
        ),
        icon: LocationService.carIcon,
        infoWindow: InfoWindow(
          title: element.driver.name,
          snippet: element.commute.status.name,
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return _WhereToNearbyCommutersBottomSheetBody(
                  element,
                );
              },
            );
          },
        ),
      ),
    );
  }
  appMapBloc.add(AppMapEvent.setMarkers(markers));
}
