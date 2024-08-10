import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/local_storage/local_storage_consts.dart';
import 'package:commuter_client/core/local_storage/models/app_settings_model.dart';
import 'package:commuter_client/core/local_storage/models/user_secret_data_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

import 'models/local_commute_model.dart';

class LocalStorageService {
  final FlutterSecureStorage _flutterSecureStorage;
  late Box<AppSettingsModel> _appSettingsBox;
  late Box<LocalCommuteModel> _localCommuteBox;
  LocalStorageService(this._flutterSecureStorage);

  Future<void> init() async {
    Hive.registerAdapter(AppSettingsModelAdapter());
    Hive.registerAdapter(LocalCommuteModelAdapter());
    final userSecretDataModel = await getUserSecretData;
    if (userSecretDataModel != null) {
      di.registerSingleton<UserSecretDataModel>(userSecretDataModel);
    }
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
    required String userEmail,
    required String userPassword,
    required String userId,
    required String userToken,
  }) async {
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userEmailKey,
      value: userEmail,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userPasswordKey,
      value: userPassword,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userIdKey,
      value: userId,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userTokenKey,
      value: 'Bearer $userToken',
    );
    return UserSecretDataModel(
      userId: userId,
      userToken: userToken,
      email: userEmail,
      password: userPassword,
    );
  }

  Future<void> deleteUserSecretData() async {
    await _flutterSecureStorage.deleteAll();
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
    List<LocalCommuteModel> result = [];
    _localCommuteBox = await Hive.openBox<LocalCommuteModel>(
      LocalStorageConsts.localCommuteBox,
    );
    _localCommuteBox.toMap().forEach((key, value) {
      result.add(value);
    });
    return result;
  }

  Future<void> addLocalCommute(
      {required LocalCommuteModel localCommuteModel}) async {
    _localCommuteBox = await Hive.openBox<LocalCommuteModel>(
      LocalStorageConsts.localCommuteBox,
    );
    _localCommuteBox.add(localCommuteModel);
  }
}
