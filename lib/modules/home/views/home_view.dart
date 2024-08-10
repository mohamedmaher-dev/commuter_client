import 'package:commuter_client/modules/chat/chat_rooms/views/chat_rooms.dart';
import 'package:commuter_client/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:commuter_client/modules/home/controllers/notifi_icon_bloc/notifi_icon_bloc.dart';
import 'package:commuter_client/modules/home/views/widgets/app_bar_view.dart';
import 'package:commuter_client/modules/home/views/widgets/app_bottom_nav_view.dart';
import 'package:commuter_client/modules/profile/views/profile_view.dart';
import 'package:commuter_client/modules/transactions/rides/views/rides_view.dart';
import 'package:commuter_client/modules/where_to/views/whare_to_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../nearby_commutes/view/nearby_commutes_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<HomeBloc>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => di<NotifiIconBloc>()
            ..add(
              const NotifiIconEvent.started(),
            ),
        ),
      ],
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return SafeArea(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            extendBody: true,
            resizeToAvoidBottomInset: false,
            primary: false,
            appBar: homeBloc.currentPage != 0 ? const AppBarView() : null,
            bottomNavigationBar: const AppBottomNavView(),
            body: Container(
              child: switch (homeBloc.currentPage) {
                0 => const WhareTo(),
                1 => const NearbyCommutes(),
                2 => const RidesView(),
                3 => const ChatRooms(),
                4 => const ProfileView(),
                int() => throw UnimplementedError(),
              },
            ),
          );
        },
      ),
    );
  }
}
