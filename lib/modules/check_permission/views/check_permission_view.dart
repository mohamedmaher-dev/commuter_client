import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/themes/app_theme_controller.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:commuter_client/modules/check_permission/controllers/check_perm_indicator_cubit/check_perm_indicator_cubit.dart';
import 'package:commuter_client/modules/check_permission/controllers/check_permission_bloc/check_permission_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/routes/app_route.dart';

class CheckPermissionView extends StatelessWidget {
  const CheckPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<CheckPermissionBloc>()
            ..add(const CheckPermissionEvent.started()),
        ),
        BlocProvider(
          create: (context) => di<CheckPermIndicatorCubit>(),
        ),
      ],
      child: const CheckPermissionViewBody(),
    );
  }
}

class CheckPermissionViewBody extends StatelessWidget {
  const CheckPermissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CheckPermissionBloc>(context);
    final indicatorCubit = BlocProvider.of<CheckPermIndicatorCubit>(context);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.w),
          child: BlocConsumer<CheckPermissionBloc, CheckPermissionState>(
            listener: (context, state) {
              state.whenOrNull(
                navigate: () {
                  AppRouter.pushReplacement(
                    context: context,
                    page: Pages.splash,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => const LoadingView(),
                loading: () => const LoadingView(),
                orElse: () => Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (value) {
                          indicatorCubit.next(value);
                        },
                        key: key,
                        controller: bloc.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: bloc.perrmissionList.length,
                        itemBuilder: (context, index) {
                          return _PermissionItem(
                            title: bloc.perrmissionList[index].title,
                            icon: bloc.perrmissionList[index].icon,
                            subtitle: bloc.perrmissionList[index].subtitle,
                            type: bloc.perrmissionList[index].type,
                          );
                        },
                      ),
                    ),
                    if (bloc.perrmissionList.length > 1)
                      SizedBox(
                        height: 25.h,
                        child: BlocBuilder<CheckPermIndicatorCubit,
                            CheckPermIndicatorState>(
                          builder: (context, state) {
                            return state.when(
                              initial: (index) {
                                return AnimatedSmoothIndicator(
                                  activeIndex: index,
                                  count: bloc.perrmissionList.length,
                                  effect: ExpandingDotsEffect(
                                    activeDotColor: ColorManger.primary,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    FilledButton(
                      onPressed: () {
                        bloc.add(const CheckPermissionEvent.allow());
                      },
                      child: const Text('Allow'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _PermissionItem extends StatelessWidget {
  const _PermissionItem({
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.type,
  });
  final String title;
  final IconData icon;
  final String subtitle;
  final PermissionType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.h,
          color: ColorManger.primary,
        ),
        Text(title, style: TextStyles.tsP15B),
        Text(
          subtitle,
          style: TextStyles.ts10N,
        ),
      ],
    );
  }
}
