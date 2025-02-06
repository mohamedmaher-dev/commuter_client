import 'package:commuter_client/core/local_storage/local_storage_consts.dart';
import 'package:commuter_client/core/local_storage/models/app_settings_model.dart';
import 'package:commuter_client/core/local_storage/models/local_schedule_model.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/local_commute_model.dart';

class LocalStorageService {
  final FlutterSecureStorage _flutterSecureStorage;
  late Box<AppSettingsModel> _appSettingsBox;
  late Box<LocalCommuteModel> _localCommuteBox;
  late Box<LocalScheduleModel> _localScheduleBox;
  static late UserSecretDataModel userSecretDataModel;
  LocalStorageService(this._flutterSecureStorage);

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AppSettingsModelAdapter());
    Hive.registerAdapter(LocalCommuteModelAdapter());
    Hive.registerAdapter(LocalScheduleModelAdapter());
    userSecretDataModel =
        await getUserSecretData ?? UserSecretDataModel.defaultUser;
  }

  Future<void> _openLocalCommuteBox() async {
    final userSecretDataModel = await getUserSecretData;
    _localCommuteBox = await Hive.openBox<LocalCommuteModel>(
      '${LocalStorageConsts.localCommuteBox}_${userSecretDataModel!.userId}',
    );
  }

  Future<void> _openLocalScheduleBox() async {
    final userSecretDataModel = await getUserSecretData;
    _localScheduleBox = await Hive.openBox<LocalScheduleModel>(
      '${LocalStorageConsts.localScheduleBox}_${userSecretDataModel!.userId}',
    );
  }

  Future<UserSecretDataModel?> get getUserSecretData async {
    Map<String, String> userSecretData = await _flutterSecureStorage.readAll();
    if (userSecretData.isEmpty) {
      return null;
    } else {
      return UserSecretDataModel.fromJson(userSecretData);
    }
  }

  Future<UserSecretDataModel> saveUserSecretData({
    required String userId,
    required String userToken,
  }) async {
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userIdKey,
      value: userId,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userTokenKey,
      value: userToken,
    );
    return UserSecretDataModel(
      userId: userId,
      userToken: userToken,
    );
  }

  Future<void> deleteUserSecretData() async {
    await _flutterSecureStorage.deleteAll();
  }

  Future<void> deleteAllUserCommutes() async {
    await _openLocalCommuteBox();
    await _localCommuteBox.deleteFromDisk();
  }

  Future<AppSettingsModel> get getAppSettings async {
    _appSettingsBox =
        await Hive.openBox<AppSettingsModel>(LocalStorageConsts.appSettingsBox);
    if (_appSettingsBox.get(0) == null) {
      await _appSettingsBox.put(0, AppSettingsModel.init());
    }
    return _appSettingsBox.get(0)!;
  }

  Future<void> saveAppSettings({
    required AppSettingsModel appSettingsModel,
  }) async {
    _appSettingsBox =
        await Hive.openBox<AppSettingsModel>(LocalStorageConsts.appSettingsBox);
    if (_appSettingsBox.get(0) == null) {
      await _appSettingsBox.put(0, AppSettingsModel.init());
    }
    _appSettingsBox.put(0, appSettingsModel);
  }

  Future<List<LocalCommuteModel>> getLocalCommutes() async {
    await _openLocalCommuteBox();
    return _localCommuteBox.values.toList();
  }

  Future<void> addLocalCommute(
      {required LocalCommuteModel localCommuteModel}) async {
    await _localCommuteBox.put(localCommuteModel.id, localCommuteModel);
  }

  Future<void> deleteCommute({
    required LocalCommuteModel localCommuteModel,
  }) async {
    await _localCommuteBox.delete(localCommuteModel.id);
  }

  Future<void> changePinCommute({
    required LocalCommuteModel localCommuteModel,
  }) async {
    await deleteCommute(localCommuteModel: localCommuteModel);
    await addLocalCommute(
      localCommuteModel: localCommuteModel.copyWith(
        isPinned: !localCommuteModel.isPinned,
      ),
    );
  }

  Future<List<LocalScheduleModel>> getLocalSchedules() async {
    await _openLocalScheduleBox();
    return _localScheduleBox.values.toList();
  }

  Future<void> addLocalSchedule(
      {required LocalScheduleModel localScheduleModel}) async {
    await _localScheduleBox.put(localScheduleModel.id, localScheduleModel);
  }

  Future<void> deleteSchedule({
    required LocalScheduleModel localScheduleModel,
  }) async {
    await _localScheduleBox.delete(localScheduleModel.id);
  }
}
