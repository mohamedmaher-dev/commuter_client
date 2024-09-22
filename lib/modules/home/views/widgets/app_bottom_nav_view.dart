import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../controllers/home_bloc/home_bloc.dart';

class AppBottomNavView extends StatelessWidget {
  const AppBottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Card(
            child: BottomBar(
              selectedIndex: homeBloc.currentPage,
              items: [
                BottomBarItem(
                  icon: const Icon(Icons.near_me),
                  activeColor: ColorManger.primary,
                ),
                // SalomonBottomBarItem(
                //   icon: SvgPicture.asset(
                //     AssetsManger.carOwner,
                //     width: 20.w,
                //     height: 20.w,
                //     colorFilter: ColorFilter.mode(
                //       ColorManger.primary,
                //       homeBloc.currentPage == 1
                //           ? BlendMode.modulate
                //           : BlendMode.dst,
                //     ),
                //   ),
                //   title: const Text("Nearby Commuters"),
                // ),
                BottomBarItem(
                  icon: const Icon(CupertinoIcons.car_detailed),
                  activeColor: ColorManger.primary,
                ),
                BottomBarItem(
                  icon: const Icon(Icons.monetization_on),
                  activeColor: ColorManger.primary,
                ),
                BottomBarItem(
                  icon: const Icon(Icons.chat),
                  activeColor: ColorManger.primary,
                ),
                BottomBarItem(
                  icon: const Icon(Icons.person_rounded),
                  activeColor: ColorManger.primary,
                ),
              ],
              onTap: (p0) {
                homeBloc.add(
                  HomeEvent.changePage(newPage: p0),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
