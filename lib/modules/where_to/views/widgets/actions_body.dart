part of '../whare_to_view.dart';

class _ActionsBody extends StatelessWidget {
  const _ActionsBody();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _NearbyCommutersActions(),
        _SetOnMapActionBtn(),
        _SendRideRequestBtn(),
      ],
    );
  }
}
