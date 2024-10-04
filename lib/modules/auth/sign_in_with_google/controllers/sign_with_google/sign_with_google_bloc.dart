import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/sign_in_with_google/data/rebos/sign_with_google_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_with_google_event.dart';
part 'sign_with_google_state.dart';
part 'sign_with_google_bloc.freezed.dart';

class SignWithGoogleBloc
    extends Bloc<SignWithGoogleEvent, SignWithGoogleState> {
  final SignWithGoogleRebo _signWithGoogleService;
  SignWithGoogleBloc(this._signWithGoogleService) : super(const _Initial()) {
    on<SignWithGoogleEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            final result = await _signWithGoogleService.startGoogleSignIn();
            result.when(
              success: (data) {
                emit(SignWithGoogleState.startSuccess(data));
              },
              failure: (error) {
                emit(SignWithGoogleState.failure(error));
              },
            );
          },
          sign: (token) async {
            emit(const SignWithGoogleState.loading());
            final result = await _signWithGoogleService.sign("Bearer $token");
            result.when(
              success: (data) {
                emit(const SignWithGoogleState.signSuccess());
              },
              failure: (error) {
                print(error);
                emit(SignWithGoogleState.failure(error));
              },
            );
          },
        );
      },
    );
  }
}
