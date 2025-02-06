import 'package:commuter_client/core/local_storage/local_storage_consts.dart';

class UserSecretDataModel {
  final String userId;
  final String userToken;
  UserSecretDataModel({
    required this.userId,
    required this.userToken,
  });

  factory UserSecretDataModel.fromJson(Map<String, dynamic> json) =>
      UserSecretDataModel(
        userId: json[LocalStorageConsts.userIdKey],
        userToken: json[LocalStorageConsts.userTokenKey],
      );

  static UserSecretDataModel get defaultUser => UserSecretDataModel(
        userId: '',
        userToken: '',
      );
}
