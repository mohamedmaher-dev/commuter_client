import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/core/widgets/notifi_icon_view.dart';
import 'package:commuter_client/modules/where_to/controllers/search_for_place_bloc/search_for_place_bloc.dart';
import 'package:commuter_client/modules/where_to/controllers/where_to_bloc/where_to_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/di.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../controllers/where_to_panel/where_to_panel_bloc.dart';
import '../../data/location_field_type.dart';

part 'where_to_bottom_sheet_view.dart';

class WhereToPanel extends StatelessWidget {
  const WhereToPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final whereToPanelBloc = context.read<WhereToPanelBloc>();
    final Language language = Language.of(context);
    return Card(
      child: BlocBuilder<WhereToPanelBloc, WhereToPanelState>(
        builder: (context, state) {
          return BlocBuilder<WhereToBloc, WhereToState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: const Icon(
                            Icons.near_me,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            language.where_to,
                            style: TextStyles.ts12B,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: ColorManger.textFormbBackground,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Row(
                            children: [
                              const NotifiIconView(),
                              IconButton(
                                onPressed: () {
                                  AppRouter.push(
                                      context: context, page: Pages.settings);
                                },
                                icon: const Icon(
                                  Icons.settings,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    _WhereToItem(
                        state: whereToPanelBloc.pickupState,
                        locationType: LocationFieldType.pickup,
                        title: whereToPanelBloc.pickupLocation?.locationName,
                        icon: CupertinoIcons.circle_fill,
                        margin: EdgeInsets.symmetric(horizontal: 10.w)),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Container(
                        margin: EdgeInsetsDirectional.only(start: 50.w),
                        width: 2.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: ColorManger.textFormbBackground,
                        ),
                      ),
                    ),
                    _WhereToItem(
                      state: whereToPanelBloc.landingState,
                      locationType: LocationFieldType.landing,
                      title: whereToPanelBloc.landingLocation?.locationName,
                      icon: CupertinoIcons.square_fill,
                      margin: EdgeInsets.only(
                          right: 10.w, left: 10.w, bottom: 10.w),
                    ),
                  ],
                ),
                setOnMap: () => const SizedBox.shrink(),
              );
            },
          );
        },
      ),
    );
  }
}

class _WhereToItem extends StatelessWidget {
  const _WhereToItem({
    required this.title,
    required this.icon,
    required this.margin,
    required this.locationType,
    required this.state,
  });
  final LocationFieldType locationType;
  final String? title;
  final IconData icon;
  final EdgeInsetsGeometry margin;
  final WhereToFieldState state;

  @override
  Widget build(BuildContext context) {
    final whereToPanelBloc = BlocProvider.of<WhereToPanelBloc>(context);
    final whereTolBloc = context.read<WhereToBloc>();
    final Language language = Language.of(context);

    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: margin,
      decoration: BoxDecoration(
        color: ColorManger.textFormbBackground,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: ListTile(
        dense: true,
        title: Text(
          title ??
              (locationType == LocationFieldType.pickup
                  ? language.enter_pickup_location
                  : language.enter_landing_location),
          maxLines: 1,
          style: title == null
              ? const TextStyle(color: Colors.grey)
              : TextStyles.tsP10N,
        ),
        leading: Icon(icon),
        trailing: switch (state) {
          WhereToFieldState.empty => const Icon(Icons.add),
          WhereToFieldState.loading => SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(
                strokeWidth: 1.r,
              ),
            ),
          WhereToFieldState.failure => Icon(
              Icons.error,
              color: ColorManger.red,
            ),
          WhereToFieldState.success => IconButton(
              onPressed: () {
                whereToPanelBloc.add(
                  WhereToPanelEvent.deleteLocationData(
                    locationFieldType: locationType,
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.clear),
            ),
        },
        onTap: () {
          whereTolBloc.locationFieldType = locationType;
          showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) => BlocProvider(
              create: (context) => di<SearchForPlaceBloc>(),
              child: _WhereToBottomSheetView(
                whereToPanelBloc,
                locationType,
                whereTolBloc,
              ),
            ),
          );
        },
      ),
    );
  }
}
