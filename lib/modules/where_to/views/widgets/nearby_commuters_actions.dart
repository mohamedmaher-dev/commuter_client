part of '../whare_to_view.dart';

class _NearbyCommutersActions extends StatelessWidget {
  const _NearbyCommutersActions();

  @override
  Widget build(BuildContext context) {
    final whereToSwitchCubit = BlocProvider.of<WhereToSwitchCubit>(context);
    final Language language = Language.of(context);
    return BlocBuilder<WhereToBloc, WhereToState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return Column(
              children: [
                const _NearbyCommutersSwitchs(),
                SizedBox(height: 10.w),
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      child:
                          BlocBuilder<WhereToSwitchCubit, WhereToSwitchState>(
                        builder: (context, state) {
                          return ElevatedButton.icon(
                            onPressed: () {
                              whereToSwitchCubit.changeVisibility();
                            },
                            label: Text(
                              language.nearby_commuters,
                              style: TextStyles.ts10B,
                            ),
                            icon: whereToSwitchCubit.visibility
                                ? const Icon(Icons.keyboard_arrow_up_rounded)
                                : const Icon(Icons.keyboard_arrow_down_rounded),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          setOnMap: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

class _NearbyCommutersSwitchs extends StatelessWidget {
  const _NearbyCommutersSwitchs();

  @override
  Widget build(BuildContext context) {
    final whereToSwitchCubit = BlocProvider.of<WhereToSwitchCubit>(context);
    return BlocBuilder<WhereToSwitchCubit, WhereToSwitchState>(
      builder: (context, state) {
        return Visibility(
          visible: whereToSwitchCubit.visibility,
          child: Card(
            color: ColorManger.transparent,
            elevation: 0,
            child: Row(
              children: [
                Expanded(
                  child: SwitchListTile(
                    title: const Icon(Icons.groups_2_rounded),
                    value: whereToSwitchCubit.carPooling,
                    onChanged: (value) {
                      whereToSwitchCubit.changeValue(
                          type: WhereToSwitchType.carPooling);
                    },
                  ),
                ),
                Container(
                  width: 1.w,
                  height: 15.h,
                  color: ColorManger.white,
                ),
                Expanded(
                  child: SwitchListTile(
                    title: const Icon(Icons.female_outlined),
                    value: whereToSwitchCubit.femaleOnly,
                    onChanged: (value) {
                      whereToSwitchCubit.changeValue(
                          type: WhereToSwitchType.femaleOnly);
                    },
                  ),
                ),
              ],
            ),
          ).frosted(
            blur: 3,
            borderRadius: BorderRadius.circular(10.w),
            frostColor: ColorManger.background,
          ),
        );
      },
    );
  }
}
