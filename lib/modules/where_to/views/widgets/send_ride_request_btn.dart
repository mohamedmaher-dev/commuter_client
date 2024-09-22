part of '../whare_to_view.dart';

class _SendRideRequestBtn extends StatelessWidget {
  const _SendRideRequestBtn();

  @override
  Widget build(BuildContext context) {
    final whereToPanelBloc = context.read<WhereToPanelBloc>();
    final whereToBloc = context.read<WhereToBloc>();
    final language = Language.of(context);
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => BlocBuilder<WhereToPanelBloc, WhereToPanelState>(
            builder: (context, state) {
              if (whereToPanelBloc.landingLocation != null &&
                  whereToPanelBloc.pickupLocation != null) {
                return Padding(
                  padding: EdgeInsets.only(top: 10.w, bottom: 25.w),
                  child: FilledButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (context) => CarPoolFemaleOnlyBottomSheetBody(
                          whereToPanelBloc: whereToPanelBloc,
                          whereToBloc: whereToBloc,
                          pickup: whereToPanelBloc.pickupLocation!.location,
                          dropoff: whereToPanelBloc.landingLocation!.location,
                        ),
                      );
                    },
                    child: Text(language.send_ride_request),
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
