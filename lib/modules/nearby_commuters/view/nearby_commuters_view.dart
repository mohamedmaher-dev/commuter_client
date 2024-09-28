import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/core/widgets/empty_view.dart';
import 'package:commuter_client/core/widgets/error_view.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/core/widgets/profile_image.dart';
import 'package:commuter_client/core/widgets/profile_rating_bar.dart';
import 'package:commuter_client/modules/chat/one_chat/data/models/chat_room_args_model.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/join_commute/join_commute_bloc.dart';
import 'package:commuter_client/modules/nearby_commuters/controllers/nearby_commuters_tabs/nearby_commuters_tabs_cubit.dart';
import 'package:commuter_client/modules/nearby_commuters/data/models/nearby_commuters_response_model.dart';
import 'package:commuter_client/modules/nearby_commuters/view/widgets/nearby_commuters_tabs_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';
import 'package:badges/badges.dart' as badges;
import '../../../core/localization/generated/l10n.dart';
import '../../../core/themes/app_theme_controller.dart';
import '../../../core/widgets/app_snack_bar.dart';
import '../controllers/nearby_commuters_bloc/nearby_commuters_bloc.dart';
part 'widgets/nearby_commuters_item_view.dart';

class NearbyCommutersView extends StatelessWidget {
  const NearbyCommutersView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<NearbyCommutersBloc>()
            ..add(
              const NearbyCommutersEvent.started(),
            ),
        ),
        BlocProvider(
          create: (context) => di<NearbyCommutersTabsCubit>(),
        ),
        BlocProvider(
          create: (context) => di<JoinCommuteBloc>(),
        ),
      ],
      child: const _NearbyCommutersViewBody(),
    );
  }
}

class _NearbyCommutersViewBody extends StatelessWidget {
  const _NearbyCommutersViewBody();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<NearbyCommutersBloc>(context);
    final tabBloc = BlocProvider.of<NearbyCommutersTabsCubit>(context);
    final language = Language.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<JoinCommuteBloc, JoinCommuteState>(
          listener: (context, state) {
            PopLoading.dismiss();
            state.whenOrNull(
              loading: () {
                PopLoading.show();
              },
              failure: (error) {
                AppSnackBar.show(
                  title: language.failure,
                  msg: error,
                  type: ContentType.failure,
                  context: context,
                );
              },
              success: () {
                AppSnackBar.show(
                  title: language.success,
                  msg: language.joined_commute_successfully,
                  type: ContentType.success,
                  context: context,
                );
              },
            );
          },
        ),
        BlocListener<NearbyCommutersBloc, NearbyCommutersState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (list, id) => tabBloc.changeTab(tabBloc.tab),
              empty: () => tabBloc.changeTab(tabBloc.tab),
            );
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const NearbyCommutersTabsBody(),
              Expanded(
                child: BlocBuilder<NearbyCommutersBloc, NearbyCommutersState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const LoadingView(),
                      success: (commuters, id) => ListView.builder(
                        itemCount: commuters.length,
                        padding: EdgeInsets.all(10.w),
                        itemBuilder: (context, index) =>
                            NearbyCommutersItemView(commuters[index]),
                      ),
                      empty: () => EmptyView(
                        icon: Icons.route_outlined,
                        text: language
                            .no_nearby_commuters_right_now_try_again_later,
                      ),
                      failure: (error) => ErrorView(
                        onPressed: () {
                          bloc.add(const NearbyCommutersEvent.started());
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
