import 'package:bloc/bloc.dart';
import 'package:commuter_client/core/routes/app_route.dart';
import 'package:commuter_client/modules/profiles/my_profile/data/rebos/profile_rebo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/get_me_response_model.dart';

part 'my_profile_event.dart';
part 'my_profile_state.dart';
part 'my_profile_bloc.freezed.dart';

class MyProfileBloc extends Bloc<MyProfileEvent, MyProfileState> {
  final MyProfileRebo _rebo;
  MyProfileBloc(this._rebo) : super(const _Initial(0)) {
    on<MyProfileEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const MyProfileState.loading());
            final getMeResult = await _rebo.getMe();
            getMeResult.when(
              success: (data) {
                emit(MyProfileState.success(data));
              },
              failure: (apiErrorModel) {
                emit(MyProfileState.failure(apiErrorModel.msg));
              },
            );
          },
          changeData: (userData) async {
            emit(const MyProfileState.loading());
            emit(MyProfileState.success(userData));
          },
          signOut: (context) async {
            final signOutResult = await _rebo.signOut();
            await signOutResult.when(
              success: (data) async {
                AppRouter.pushAndRemoveUntil(
                    context: context, page: Pages.splash);
              },
              failure: (error) {
                emit(MyProfileState.failure(error));
              },
            );
          },
          updateProfile: (userData, imagePath) async {
            emit(const MyProfileState.loading());
            final updateMeResult = await _rebo.updateMe(
              email: userData.userData.email,
              name: userData.userData.name,
              phone: userData.userData.phone,
              image: await MultipartFile.fromFile(imagePath),
            );
            updateMeResult.when(
              success: (data) {
                add(const MyProfileEvent.started());
              },
              failure: (apiErrorModel) {
                emit(MyProfileState.failure(apiErrorModel.msg));
              },
            );
          },
        );
      },
    );
  }
}
