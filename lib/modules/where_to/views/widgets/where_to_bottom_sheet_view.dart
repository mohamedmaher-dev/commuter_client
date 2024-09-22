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
    final Language language = Language.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.w),
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: language.search_for_place,
              prefixIcon: const Icon(Icons.search),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                borderSide: BorderSide.none,
              ),
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
              label: Text(language.set_on_map),
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
              label: Text(language.current_location),
              icon: const Icon(Icons.my_location),
            )
          ],
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
