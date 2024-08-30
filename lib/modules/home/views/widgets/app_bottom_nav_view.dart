import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../core/themes/controller/app_theme_bloc.dart';
import '../../controllers/home_bloc/home_bloc.dart';

class AppBottomNavView extends StatelessWidget {
  const AppBottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Card(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SalomonBottomBar(
                itemShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                selectedItemColor: ColorManger.primary,
                currentIndex: homeBloc.currentPage,
                items: [
                  SalomonBottomBarItem(
                    icon: const Icon(Icons.near_me),
                    title: const Text("Where to?"),
                  ),
                  SalomonBottomBarItem(
                    icon: SvgPicture.asset(
                      AssetsManger.carOwner,
                      width: 20.w,
                      height: 20.w,
                      colorFilter: ColorFilter.mode(
                        ColorManger.primary,
                        homeBloc.currentPage == 1
                            ? BlendMode.modulate
                            : BlendMode.dst,
                      ),
                    ),
                    title: const Text("Nearby Commuters"),
                  ),
                  SalomonBottomBarItem(
                    selectedColor: Colors.green,
                    icon: const Icon(Icons.monetization_on),
                    title: const Text("Transactions"),
                  ),
                  SalomonBottomBarItem(
                    icon: const Icon(Icons.chat),
                    title: const Text("Chats"),
                  ),
                  SalomonBottomBarItem(
                    icon: const Icon(Icons.person_rounded),
                    title: const Text("Profile"),
                  ),
                ],
                onTap: (p0) {
                  homeBloc.add(
                    HomeEvent.changePage(newPage: p0),
                  );
                });
          },
        ),
      ),
    );
  }
}
