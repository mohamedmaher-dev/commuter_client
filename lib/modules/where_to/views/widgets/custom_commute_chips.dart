part of '../whare_to_view.dart';

class CommuteChips extends StatelessWidget {
  const CommuteChips(this.localCommuteModel, {super.key});
  final LocalCommuteModel localCommuteModel;

  @override
  Widget build(BuildContext context) {
    final whereToBloc = BlocProvider.of<WhereToBloc>(context);
    final whereToPanelBloc = BlocProvider.of<WhereToPanelBloc>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: ActionChip(
        onPressed: () async {
          showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) => CarPoolFemaleOnlyBottomSheetBody(
              whereToPanelBloc: whereToPanelBloc,
              whereToBloc: whereToBloc,
              dropoff: LatLng(
                localCommuteModel.latitude,
                localCommuteModel.longitude,
              ),
              pickup: null,
            ),
          );
        },
        color: const MaterialStatePropertyAll(ColorManger.myGold),
        side: const BorderSide(color: ColorManger.myBlue),
        avatar: const Icon(Icons.route_outlined, color: ColorManger.myBlue),
        labelStyle: const TextStyle(
          color: ColorManger.myBlue,
          fontWeight: FontWeight.bold,
        ),
        label: Text(localCommuteModel.commuteName),
      ),
    );
  }
}
