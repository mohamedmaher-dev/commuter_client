import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'my_profile_pic_state.dart';
part 'my_profile_pic_cubit.freezed.dart';

class MyProfilePicCubit extends Cubit<MyProfilePicState> {
  ImagePicker imagePicker = ImagePicker();
  XFile? image;
  MyProfilePicCubit() : super(const MyProfilePicState.initial());

  void pickProfilePic({required ImageSource source}) async {
    image = await imagePicker.pickImage(source: source);
    if (image != null) {
      emit(MyProfilePicState.imageSelected(image: File(image!.path)));
    } else {
      emit(const MyProfilePicState.initial());
    }
  }
}
