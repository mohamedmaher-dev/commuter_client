part of '../whare_to_view.dart';

class _MyCommutesBodyView extends StatelessWidget {
  const _MyCommutesBodyView();

  @override
  Widget build(BuildContext context) {
    final whereToMyCommutesBloc =
        BlocProvider.of<WhereToMyCommutesBloc>(context);
    final Language language = Language.of(context);
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Row(
            children: [
              SizedBox(
                height: 50.h,
                child: ActionChip(
                  onPressed: () async {
                    await AppRouter.push(
                      context: context,
                      page: Pages.myCommutes,
                    );
                    whereToMyCommutesBloc
                        .add(const WhereToMyCommutesEvent.started());
                  },
                  color: const MaterialStatePropertyAll(
                    ColorManger.myBlue,
                  ),
                  side: const BorderSide(color: ColorManger.myBlue),
                  labelStyle: const TextStyle(
                    color: ColorManger.myGold,
                    fontWeight: FontWeight.bold,
                  ),
                  label: Text(language.my_commutes),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50.h,
                  child: BlocBuilder<WhereToMyCommutesBloc,
                      WhereToMyCommutesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        success: (data) => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) => CommuteChips(
                            data[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          setOnMap: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
