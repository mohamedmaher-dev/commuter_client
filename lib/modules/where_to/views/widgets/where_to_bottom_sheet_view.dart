part of 'where_to_panel.dart';

class _WhereToBottomSheetView extends StatelessWidget {
  const _WhereToBottomSheetView(
      this.whereToPanelBloc, this.locationType, this.whereToBloc);
  final WhereToPanelBloc whereToPanelBloc;
  final WhereToBloc whereToBloc;
  final LocationFieldType locationType;

  @override
  Widget build(BuildContext context) {
    final searchForPlaceBloc = context.read<SearchForPlaceBloc>();
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.add_location_alt_rounded,
            color: ColorManger.primary,
          ),
          title: Text(
            'Enter Location',
            style: TextStyles.tsP15B,
          ),
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Search for place',
              prefixIcon: Icon(Icons.search),
              filled: true,
            ),
            onSubmitted: (value) => searchForPlaceBloc.add(
              SearchForPlaceEvent.search(text: value),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              style: const ButtonStyle(elevation: MaterialStatePropertyAll(0)),
              onPressed: () {
                whereToBloc.add(const WhereToEvent.onSetOnMap());
                AppRouter.pop(context: context);
              },
              label: const Text('Set on map'),
              icon: const Icon(Icons.pin_drop),
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(elevation: MaterialStatePropertyAll(0)),
              onPressed: () {
                whereToPanelBloc.add(
                  WhereToPanelEvent.onSelectCurrentLocation(
                    locationFieldType: locationType,
                  ),
                );
                AppRouter.pop(context: context);
              },
              label: const Text('Current location'),
              icon: const Icon(Icons.my_location),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(2.w),
          child: ActionChip(
            onPressed: () {},
            label: const Text('Home'),
            avatar: const Icon(
              Icons.route_outlined,
            ),
          ),
        ),
        const Divider(),
        BlocBuilder<SearchForPlaceBloc, SearchForPlaceState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: LoadingView()),
              success: (places) {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (contextSheet, index) => ListTile(
                      onTap: () {
                        whereToPanelBloc.add(
                          WhereToPanelEvent.onSelectPlace(
                            predictionModel: places[index],
                            locationFieldType: locationType,
                          ),
                        );
                        AppRouter.pop(context: contextSheet);
                      },
                      title: Text(maxLines: 1, places[index].description),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: places.length,
                  ),
                );
              },
              failure: () => const ErrorView(),
              empty: () => const SizedBox(),
            );
          },
        ),
      ],
    );
  }
}
