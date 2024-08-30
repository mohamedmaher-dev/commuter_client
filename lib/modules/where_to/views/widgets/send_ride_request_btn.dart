part of '../whare_to_view.dart';

class _SendRideRequestBtn extends StatelessWidget {
  const _SendRideRequestBtn();

  @override
  Widget build(BuildContext context) {
    final whereToPanelBloc = context.read<WhereToPanelBloc>();
    final whereToBloc = context.read<WhereToBloc>();
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => BlocBuilder<WhereToPanelBloc, WhereToPanelState>(
            builder: (context, state) {
              if (whereToPanelBloc.landingLocation != null &&
                  whereToPanelBloc.pickupLocation != null) {
                return Padding(
                  padding: EdgeInsets.only(top: 10.w),
                  child: FilledButton(
                    onPressed: () {
                      whereToBloc.add(
                        WhereToEvent.onSendRideRequest(
                          pickup: whereToPanelBloc.pickupLocation!.location,
                          landing: whereToPanelBloc.landingLocation!.location,
                        ),
                      );
                      whereToPanelBloc.add(const WhereToPanelEvent.started());
                    },
                    child: const Text('Send Ride Request'),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          setOnMap: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
