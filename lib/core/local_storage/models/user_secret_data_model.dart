import 'package:commuter_client/core/local_storage/local_storage_consts.dart';

class UserSecretDataModel {
  final String email;
  final String password;
  final String userId;
  final String userToken;
  UserSecretDataModel({
    required this.userId,
    required this.userToken,
    required this.email,
    required this.password,
  });

  factory UserSecretDataModel.fromJson(Map<String, dynamic> json) =>
      UserSecretDataModel(
        email: json[LocalStorageConsts.userEmailKey],
        password: json[LocalStorageConsts.userPasswordKey],
        userId: json[LocalStorageConsts.userIdKey],
        userToken: json[LocalStorageConsts.userTokenKey],
      );

  static UserSecretDataModel get defaultUser => UserSecretDataModel(
        email: '',
        password: '',
        userId: '',
        userToken: '',
      );
}
