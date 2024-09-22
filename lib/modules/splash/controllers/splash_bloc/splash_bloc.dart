import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/check_permission/data/rebos/check_permission_rebo.dart';
import 'package:commuter_client/modules/splash/data/rebos/splash_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/local_storage/local_storage_result.dart';
import '../../../../core/local_storage/models/user_secret_data_model.dart';
part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashRebo _splashRebo;
  final CheckPermissionRebo _checkPermissionRebo;
  SplashBloc(this._splashRebo, this._checkPermissionRebo)
      : super(const _Initial()) {
    on<SplashEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            final permissionIsGranted = await _checkPermissionRebo.check();
            if (permissionIsGranted) {
              await _checkIsLoginMethod(emit, this);
            } else {
              emit(const SplashState.noPermission());
            }
          },
        );
      },
    );
  }

  Future<void> _signInMethod(
    Emitter<SplashState> emit,
    UserSecretDataModel userSecretDataModel,
  ) async {
    emit(const SplashState.loading());
    final loginResult = await _splashRebo.signIn();
    await loginResult.when(
      success: (data) async {
        final saveUserSecretDataResult = await _splashRebo.saveUserAuthInfo(
          email: data.userData.email,
          password: userSecretDataModel.password,
          id: data.userData.id,
          token: data.token,
        );
        await saveUserSecretDataResult.when(
          success: (result) async {
            emit(const SplashState.success());
          },
          failure: (error) {
            emit(SplashState.failure(error: error, code: 0));
          },
        );
      },
      failure: (apiErrorModel) {
        emit(SplashState.failure(
            error: apiErrorModel.msg, code: apiErrorModel.code));
      },
    );
  }

  Future<void> _checkIsLoginMethod(
      Emitter<SplashState> emit, SplashBloc bloc) async {
    emit(const SplashState.loading());
    final LocalStorageResult<UserSecretDataModel?> isLoginResult =
        await _splashRebo.isLogin();
    await isLoginResult.when(
      success: (result) async {
        if (result != null) {
          await _signInMethod(emit, result);
        } else {
          emit(const SplashState.noLogin());
        }
      },
      failure: (error) {
        emit(SplashState.failure(error: error, code: 0));
      },
    );
  }
}
