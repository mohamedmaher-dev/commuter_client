part of '../whare_to_view.dart';

class _CommuteChips extends StatelessWidget {
  const _CommuteChips(this.localCommuteModel);
  final LocalCommuteModel localCommuteModel;

  @override
  Widget build(BuildContext context) {
    final whereToBloc = context.read<WhereToBloc>();

    return Padding(
      padding: EdgeInsets.all(2.w),
      child: ActionChip(
        onPressed: () {
          whereToBloc.add(
            WhereToEvent.onSendRideRequestFromLocalCommute(
              commute: localCommuteModel,
            ),
          );
        },
        label: Text(localCommuteModel.commuteName),
        avatar: const Icon(
          Icons.route_outlined,
        ),
      ),
    );
  }
}
