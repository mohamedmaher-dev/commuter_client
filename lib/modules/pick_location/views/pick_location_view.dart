import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/widgets/app_map_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/pick_location/controllers/pick_location_bloc/pick_location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickLocationView extends StatelessWidget {
  const PickLocationView({super.key, required this.onPickLocation});

  final Function(LatLng, Placemark) onPickLocation;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<PickLocationBloc>()
        ..add(
          const PickLocationEvent.started(),
        ),
      child: _PickLocationView(
        onPickLocation: onPickLocation,
      ),
    );
  }
}

class _PickLocationView extends StatelessWidget {
  const _PickLocationView({required this.onPickLocation});
  final Function(LatLng, Placemark) onPickLocation;
  @override
  Widget build(BuildContext context) {
    final pickLocationBloc = BlocProvider.of<PickLocationBloc>(context);

    return BlocConsumer<PickLocationBloc, PickLocationState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          ploading: () {
            PopLoading.show();
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          initial: () {
            return const LoadingView();
          },
          loading: () {
            return const LoadingView();
          },
          orElse: () {
            return Stack(
              children: [
                Scaffold(
                  floatingActionButton: Column(
                    children: [
                      const Spacer(),
                      FloatingActionButton.extended(
                        onPressed: () {
                          pickLocationBloc.add(
                            const PickLocationEvent.goToMe(),
                          );
                        },
                        icon: const Icon(Icons.location_history_rounded),
                        label: const Text(
                          'موقعي',
                        ),
                      ),
                      SizedBox(height: 10.h),
                      FloatingActionButton.extended(
                        onPressed: () {
                          onPickLocation(
                            pickLocationBloc.currentLatLng,
                            pickLocationBloc.placemark,
                          );
                          AppRouter.pop(context: context);
                        },
                        icon: const Icon(Icons.done_all_rounded),
                        label: const Text(
                          'تأكيد',
                        ),
                      )
                    ],
                  ),
                  body: AppMapView(
                    target: pickLocationBloc.cameraPosition.target,
                    markers: pickLocationBloc.marker,
                    onMapCreated: (controller) {
                      pickLocationBloc.add(
                        PickLocationEvent.onMapCreated(controller),
                      );
                    },
                    onTap: (argument) {
                      pickLocationBloc.add(
                        PickLocationEvent.onMapTap(argument),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                pickLocationBloc.placemark.country.toString(),
                                style: TextStyles.tsP12B,
                              ),
                              subtitle: const Text('الدولة'),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                pickLocationBloc.placemark.street.toString(),
                                style: TextStyles.tsP12B,
                              ),
                              subtitle: const Text('الشارع'),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
