part of '../whare_to_view.dart';

class _MapView extends StatelessWidget {
  const _MapView();

  @override
  Widget build(BuildContext context) {
    final WhereToBloc whereToBloc = BlocProvider.of<WhereToBloc>(context);
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: LocationService.defaultCameraPosition,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) {},
          onCameraMove: (position) {
            whereToBloc.add(
                WhereToEvent.onCameraPositionChanged(cameraPosition: position));
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
                    border: Border.all(color: ColorManger.primaryContainer),
                    color: ColorManger.transparent,
                  ),
                  child: CircleAvatar(maxRadius: 3.r),
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
