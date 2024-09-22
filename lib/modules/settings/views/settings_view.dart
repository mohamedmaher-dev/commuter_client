import 'package:commuter_client/core/bloc/main_bloc.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/localization/app_localization_controller.dart';
import 'package:commuter_client/core/localization/models/app_language_model.dart';
import 'package:commuter_client/core/widgets/pop_loading.dart';
import 'package:commuter_client/modules/settings/controllers/settings_delete_profile/settings_delete_profile_cubit.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/localization/generated/l10n.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/themes/app_theme_controller.dart';
part 'widgets/settings_general_body_view.dart';
part 'widgets/settings_my_ptofile_body_view.dart';
part 'widgets/settings_support_body_view.dart';
part 'widgets/language_bottom_sheet_body.dart';
part 'widgets/map_settings_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SettingsDeleteProfileCubit>(),
      child: const _SettingsBody(),
    );
  }
}

class _SettingsBody extends StatefulWidget {
  const _SettingsBody();

  @override
  State<_SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<_SettingsBody> {
  @override
  Widget build(BuildContext context) {
    final mainBloc = BlocProvider.of<MainBloc>(context);
    final language = Language.of(context);
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            AppRouter.pushAndRemoveUntil(context: context, page: Pages.home);
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(language.settings),
            ),
            body: ListView(
              padding: EdgeInsets.all(10.w),
              children: [
                _SettingsGeneralBodyView(mainBloc: mainBloc),
                // const _MapSettingBody(),
                _SettingMyProfileBodyView(mainBloc: mainBloc),
                _SettingsSupportBody_view(mainBloc: mainBloc),
              ],
            ),
          ),
        );
      },
    );
  }
}
