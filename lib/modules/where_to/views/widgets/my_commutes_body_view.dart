part of '../whare_to_view.dart';

class _MyCommutesBodyView extends StatelessWidget {
  const _MyCommutesBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Row(
            children: [
              Padding(
                padding: EdgeInsets.all(2.w),
                child: ActionChip(
                  onPressed: () {
                    AppRouter.pushReplacement(
                        context: context, page: Pages.add);
                  },
                  color: WidgetStatePropertyAll(
                    ColorManger.primaryContainer,
                  ),
                  labelStyle: TextStyles.tsP10B,
                  label: const Text('My Commutes'),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 25.h,
                  child: BlocBuilder<WhereToMyCommutesBloc,
                      WhereToMyCommutesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        success: (data) => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) => _CommuteChips(
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
