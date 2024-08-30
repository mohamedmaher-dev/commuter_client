import 'package:commuter_client/core/utils/assets_manger.dart';
import 'package:commuter_client/modules/chat/chat_rooms/views/chat_rooms.dart';
import 'package:commuter_client/modules/nearby_commutes/view/nearby_commutes_view.dart';
import 'package:commuter_client/modules/transactions/rides/views/rides_view.dart';
import 'package:commuter_client/modules/where_to/views/whare_to_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../profile/views/profile_view.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(10.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: SalomonBottomBar(
                currentIndex: selectedIndex,
                backgroundColor: ColorManger.background,
                itemShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                selectedItemColor: ColorManger.primary,
                items: [
                  SalomonBottomBarItem(
                    activeIcon: const SizedBox.shrink(),
                    icon: const Icon(Icons.near_me),
                    title: const Text("Where to?"),
                  ),
                  SalomonBottomBarItem(
                    activeIcon: const SizedBox.shrink(),
                    icon: SvgPicture.asset(
                      AssetsManger.carOwner,
                      width: 15.w,
                      height: 16.w,
                      colorFilter: ColorFilter.mode(
                        ColorManger.primary,
                        BlendMode.dst,
                      ),
                    ),
                    title: const Text("Nearby Commutes"),
                  ),
                  SalomonBottomBarItem(
                    activeIcon: const SizedBox.shrink(),
                    selectedColor: Colors.green,
                    icon: const Icon(Icons.monetization_on),
                    title: const Text("Transactions"),
                  ),
                  SalomonBottomBarItem(
                    activeIcon: const SizedBox.shrink(),
                    icon: const Icon(Icons.chat),
                    title: const Text("Chats"),
                  ),
                  SalomonBottomBarItem(
                    activeIcon: const SizedBox.shrink(),
                    icon: const Icon(Icons.person_rounded),
                    title: const Text("Profile"),
                  ),
                ],
                onTap: (p0) {
                  setState(() {
                    selectedIndex = p0;
                    pageController.jumpToPage(p0);
                  });
                }),
          ),
        ),
        extendBody: true,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            WhereToView(),
            NearbyCommutes(),
            RidesView(),
            ChatRooms(),
            ProfileView(),
          ],
        ),
      ),
    );
  }
}

PageController pageController = PageController(initialPage: 0);
