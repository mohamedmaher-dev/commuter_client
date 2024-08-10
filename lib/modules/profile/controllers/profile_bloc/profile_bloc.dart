import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/profile/data/models/get_me_response_model.dart';
import 'package:commuter_client/modules/profile/data/rebos/profile_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:image_picker/image_picker.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRebo _profileRebo;
  late GetMeResponseModel getMeResponseModel;
  // late ImageSource imageSource;
  // PickedFile? imageFile;
  ProfileBloc(this._profileRebo) : super(const _Initial()) {
    on<ProfileEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await getMeMethod(emit);
          },
          deleteMe: () async {
            await deleteMeMethod(emit);
          },
          pickImage: () async {
            // imageFile = await _profileRebo.pickImage(imageSource: imageSource);
            emit(ProfileState.refresh(state.hashCode));
          },
          updateMe: () async {
            emit(const ProfileState.loading());
            // final updateMeResult = await _profileRebo.updateMe(
            //   name: 'Mohamed Maher',
            //   phone: '01065027589',
            //   email: 'mohamed@gmail.com',
            //   image: File(imageFile!.path),
            // );
            // updateMeResult.when(
            //   success: (data) {
            //     emit(const ProfileState.updateMeSuccess());
            //   },
            //   failure: (apiErrorModel) {
            //     emit(
            //       ProfileState.failure(
            //         msg: apiErrorModel.msg,
            //       ),
            //     );
            //   },
            // );
          },
        );
      },
    );
  }

  Future<void> deleteMeMethod(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final deleteMeResult = await _profileRebo.deleteMe();
    deleteMeResult.when(
      success: (data) {
        emit(const ProfileState.deleteMeSuccess());
      },
      failure: (apiErrorModel) {
        emit(ProfileState.failure(msg: apiErrorModel.msg));
      },
    );
  }

  Future<void> getMeMethod(Emitter<ProfileState> emit) async {
    emit(const ProfileState.getMeLoading());
    final getMeResult = await _profileRebo.getMe();
    getMeResult.when(
      success: (data) {
        getMeResponseModel = data;
        emit(const ProfileState.getMeSuccess());
      },
      failure: (apiErrorModel) {
        emit(ProfileState.getMefailure(msg: apiErrorModel.msg));
      },
    );
  }
}
