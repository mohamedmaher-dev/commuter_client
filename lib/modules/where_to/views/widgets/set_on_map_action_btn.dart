part of '../whare_to_view.dart';

class _SetOnMapActionBtn extends StatelessWidget {
  const _SetOnMapActionBtn();

  @override
  Widget build(BuildContext context) {
    final whereToBloc = context.read<WhereToBloc>();
    final whereToPanel = context.read<WhereToPanelBloc>();
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          setOnMap: () => Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ColorManger.red,
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      ColorManger.white,
                    ),
                  ),
                  onPressed: () {
                    whereToBloc.add(const WhereToEvent.onCancelSetOnMap());
                  },
                  label: const Text('Cancel'),
                  icon: const Icon(Icons.cancel),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: FilledButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ColorManger.primaryContainer,
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      ColorManger.white,
                    ),
                  ),
                  onPressed: () {
                    whereToPanel.add(
                      WhereToPanelEvent.onSelectFromMap(
                        location: whereToBloc.cameraPosition.target,
                        locationFieldType: whereToBloc.locationFieldType,
                      ),
                    );
                    whereToBloc.add(const WhereToEvent.onCancelSetOnMap());
                  },
                  label: const Text('Confirm'),
                  icon: const Icon(Icons.done),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
