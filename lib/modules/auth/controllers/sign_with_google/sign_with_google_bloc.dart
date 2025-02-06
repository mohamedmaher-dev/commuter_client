import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/auth/data/rebos/sign_in/sign_with_google_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_with_google_event.dart';
part 'sign_with_google_state.dart';
part 'sign_with_google_bloc.freezed.dart';

class SignWithGoogleBloc
    extends Bloc<SignWithGoogleEvent, SignWithGoogleState> {
  final SignInWithGoogleRebo _signWithGoogleService;
  SignWithGoogleBloc(this._signWithGoogleService) : super(const _Initial()) {
    on<SignWithGoogleEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            final token = await _signWithGoogleService.choseAccount();
            if (token != null) {
              emit(const SignWithGoogleState.loading());
              final signInResult =
                  await _signWithGoogleService.signIn('Bearer $token');
              signInResult.when(
                success: (data) {
                  emit(const SignWithGoogleState.signSuccess());
                },
                failure: (apiErrorModel) {
                  emit(SignWithGoogleState.failure(apiErrorModel.msg));
                },
              );
            } else {
              emit(const SignWithGoogleState.failure('Please choose account'));
            }
          },
        );
      },
    );
  }
}
