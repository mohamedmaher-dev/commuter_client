part of '../whare_to_view.dart';

class _SetOnMapActionBtn extends StatelessWidget {
  const _SetOnMapActionBtn();

  @override
  Widget build(BuildContext context) {
    final whereToBloc = context.read<WhereToBloc>();
    final whereToPanel = context.read<WhereToPanelBloc>();
    final language = Language.of(context);
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          setOnMap: () => Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ColorManger.red,
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      ColorManger.white,
                    ),
                  ),
                  onPressed: () {
                    whereToBloc.add(const WhereToEvent.onCancelSetOnMap());
                  },
                  label: Text(language.cancel),
                  icon: const Icon(Icons.cancel),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorManger.myBlue),
                    foregroundColor: MaterialStatePropertyAll(
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
                  label: Text(language.confirm),
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
