import 'package:bloc/bloc.dart';
import 'package:commuter_client/modules/check_permission/data/rebos/check_permission_rebo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

import '../../data/models/permission_item_model.dart';
part 'check_permission_event.dart';
part 'check_permission_state.dart';
part 'check_permission_bloc.freezed.dart';

class CheckPermissionBloc
    extends Bloc<CheckPermissionEvent, CheckPermissionState> {
  final PageController pageController = PageController();
  int _currentPermission = 0;
  late List<PermissionItemModel> perrmissionList;
  final CheckPermissionRebo _checkPermissionRebo;
  late bool locationServiceEnabled;
  late bool locationisGranted;
  late PermissionStatus locationHasStatus;
  late bool notifiisGranted;
  CheckPermissionBloc(this._checkPermissionRebo) : super(const _Initial()) {
    on<CheckPermissionEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const CheckPermissionState.loading());
            locationServiceEnabled =
                await _checkPermissionRebo.locationServiceEnabled();
            locationisGranted = await _checkPermissionRebo.locationisGranted();
            locationHasStatus =
                await _checkPermissionRebo.locationPermissionStatus();
            notifiisGranted = await _checkPermissionRebo.notifiisGranted();
            perrmissionList = getPermissionList();
            emit(const CheckPermissionState.success());
          },
          allow: () async {
            final allowResult =
                switch (perrmissionList[_currentPermission].type) {
              PermissionType.locationService =>
                await _checkPermissionRebo.requestLocationService(),
              PermissionType.locationisPermission =>
                await _checkPermissionRebo.requestLocationPermission(),
              PermissionType.notifiiPermission =>
                await _checkPermissionRebo.requstNotifiPermission(),
            };
            if (allowResult) {
              _currentPermission++;
              pageController.nextPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.linear,
              );
              if (_currentPermission == perrmissionList.length) {
                emit(const CheckPermissionState.navigate());
              } else {
                emit(const CheckPermissionState.success());
              }
            }
          },
        );
      },
    );
  }
  List<PermissionItemModel> getPermissionList() {
    List<PermissionItemModel> list = [];
    if (!locationServiceEnabled) {
      list.add(PermissionItemModel(
        type: PermissionType.locationService,
        title: 'Location Services',
        icon: Icons.gps_fixed,
        subtitle: 'Allow Commuter to access your GPS',
      ));
    }
    if (!locationisGranted) {
      list.add(PermissionItemModel(
        type: PermissionType.locationisPermission,
        title: 'Location Permission',
        icon: Icons.location_on,
        subtitle: 'Allow Commuter to access your location',
      ));
    }
    if (!notifiisGranted) {
      list.add(PermissionItemModel(
        type: PermissionType.notifiiPermission,
        title: 'Notification Permission',
        icon: Icons.notifications,
        subtitle: 'Allow Commuter to access your notification',
      ));
    }
    return list;
  }
}

enum PermissionType {
  locationService,
  locationisPermission,
  notifiiPermission,
}
