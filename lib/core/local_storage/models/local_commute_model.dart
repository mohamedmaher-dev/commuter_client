import 'package:hive/hive.dart';

import '../hive_adapter_type.dart';
part 'local_commute_model.g.dart';

@HiveType(typeId: HiveAdapterType.localCommuteModle)
class LocalCommuteModel {
  @HiveField(0)
  final String commuteName;
  @HiveField(1)
  final double latitude;
  @HiveField(2)
  final double longitude;
  @HiveField(3)
  final bool isPinned;
  @HiveField(4)
  final String id;
  LocalCommuteModel({
    required this.commuteName,
    required this.latitude,
    required this.longitude,
    required this.id,
    this.isPinned = false,
  });

  LocalCommuteModel copyWith({
    String? commuteName,
    double? latitude,
    double? longitude,
    String? id,
    bool? isPinned,
  }) {
    return LocalCommuteModel(
      commuteName: commuteName ?? this.commuteName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      id: id ?? this.id,
      isPinned: isPinned ?? this.isPinned,
    );
  }
}
