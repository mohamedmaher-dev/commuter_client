part of '../whare_to_view.dart';

class _ActionsBody extends StatelessWidget {
  const _ActionsBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const _NearbyCommutersActions(),
        const _SetOnMapActionBtn(),
        const _SendRideRequestBtn(),
        SizedBox(height: kBottomNavigationBarHeight.h),
      ],
    );
  }
}
