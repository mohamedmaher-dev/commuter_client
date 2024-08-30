part of '../whare_to_view.dart';

class CommuteChips extends StatelessWidget {
  const CommuteChips(this.localCommuteModel, {super.key});
  final LocalCommuteModel localCommuteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: ActionChip(
        onPressed: () {
          // whereToBloc.add(
          //   WhereToEvent.onSendRideRequestFromLocalCommute(
          //     commute: localCommuteModel,
          //   ),
          // );
          showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.all(10.w),
              child: ListView(
                shrinkWrap: true,
                children: [
                  SwitchListTile(
                    title: Row(
                      children: [
                        const Icon(Icons.groups_2_rounded),
                        SizedBox(width: 10.w),
                        const Text('Carpooling'),
                      ],
                    ),
                    value: true,
                    onChanged: (value) {},
                  ),
                  SwitchListTile(
                    title: Row(
                      children: [
                        const Icon(Icons.female_outlined),
                        SizedBox(width: 10.w),
                        const Text("Female Only"),
                      ],
                    ),
                    value: true,
                    onChanged: (value) {},
                  ),
                  FilledButton(
                      onPressed: () {}, child: const Text('Send Request')),
                ],
              ),
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
