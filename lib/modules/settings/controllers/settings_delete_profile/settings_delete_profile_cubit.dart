import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/settings/data/rebos/settings_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_delete_profile_state.dart';
part 'settings_delete_profile_cubit.freezed.dart';

class SettingsDeleteProfileCubit extends Cubit<SettingsDeleteProfileState> {
  final SettingsRebo _rebo;
  SettingsDeleteProfileCubit(this._rebo)
      : super(const SettingsDeleteProfileState.initial());

  Future<void> deleteProfile() async {
    emit(const SettingsDeleteProfileState.loading());
    final result = await _rebo.deleteProfile();
    result.when(
      success: (_) => emit(const SettingsDeleteProfileState.success()),
      failure: (error) => emit(SettingsDeleteProfileState.failure(error.msg)),
    );
  }
}
