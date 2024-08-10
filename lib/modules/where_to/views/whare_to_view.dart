import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/local_storage/models/local_commute_model.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_bloc/where_to_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_my_commutes_bloc/where_to_my_commutes_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_panel/where_to_panel_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_switch_cubit/where_to_switch_cubit.dart';
import 'package:commuter_client/modules/where_to/views/widgets/where_to_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/location/location_service.dart';
import '../../../core/widgets/app_snack_bar.dart';
import '../../../core/widgets/pop_loading.dart';

part 'widgets/custom_shedule_chips.dart';
part 'widgets/custom_commute_chips.dart';
part 'widgets/my_commutes_body_view.dart';
part 'widgets/actions_body.dart';
part 'widgets/map_view.dart';
part 'widgets/set_on_map_action_btn.dart';
part 'widgets/send_ride_request_btn.dart';
part 'widgets/nearby_commuters_actions.dart';
part 'widgets/nearest_stations_btn.dart';

class WhareTo extends StatelessWidget {
  const WhareTo({super.key});

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
      ],
      child: const _WhareTo(),
    );
  }
}

class _WhareTo extends StatelessWidget {
  const _WhareTo();
  @override
  Widget build(BuildContext context) {
    return BlocListener<WhereToBloc, WhereToState>(
      listener: listener,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
          child: const _ActionsBody(),
        ),
        resizeToAvoidBottomInset: false,
        primary: true,
        body: const _MapView(),
      ),
    );
  }
}

void Function(BuildContext, WhereToState) listener = (context, state) {
  PopLoading.dismiss();
  state.whenOrNull(popLoading: () {
    PopLoading.show();
  }, sendRideRequestSuccess: () {
    AppSnackBar.show(
      title: 'Success',
      msg: 'Send Ride Request Success',
      type: ContentType.success,
      context: context,
    );
  }, sendRideRequestFailure: () {
    AppSnackBar.show(
      title: 'Failure',
      msg: 'Send Ride Request Failure',
      type: ContentType.failure,
      context: context,
    );
  });
};
