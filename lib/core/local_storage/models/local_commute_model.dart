import 'package:hive/hive.dart';

part 'local_commute_model.g.dart';

@HiveType(typeId: 2)
class LocalCommuteModel {
  @HiveField(0)
  final String commuteName;
  @HiveField(1)
  final double latitude;
  @HiveField(2)
  final double longitude;
  LocalCommuteModel({
    required this.commuteName,
    required this.latitude,
    required this.longitude,
  });
}
