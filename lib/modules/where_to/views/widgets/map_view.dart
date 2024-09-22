part of '../whare_to_view.dart';

class _MapView extends StatelessWidget {
  const _MapView();

  @override
  Widget build(BuildContext context) {
    final WhereToBloc whereToBloc = BlocProvider.of<WhereToBloc>(context);
    final AppMapBloc appMapBloc = BlocProvider.of<AppMapBloc>(context);
    return Stack(
      children: [
        BlocBuilder<AppMapBloc, AppMapState>(
          builder: (context, state) {
            return AppMapView(
              markers: appMapBloc.markers,
              mapBloc: appMapBloc,
              autoMove: false,
              onCameraMove: (position) => whereToBloc.add(
                WhereToEvent.onCameraPositionChanged(cameraPosition: position),
              ),
              onMapCreated: (controller) => whereToBloc.add(
                WhereToEvent.onMapCreated(controller: controller),
              ),
            );
          },
        ),
        BlocBuilder<WhereToBloc, WhereToState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              setOnMap: () => Center(
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorManger.primary),
                    color: ColorManger.transparent,
                  ),
                  child: CircleAvatar(
                    maxRadius: 3.r,
                    backgroundColor: ColorManger.primary,
                  ),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: const Column(
            children: [
              WhereToPanel(),
              _MyCommutesBodyView(),
            ],
          ),
        )
      ],
    );
  }
}
