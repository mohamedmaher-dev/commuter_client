import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../hive_adapter_type.dart';
part 'local_schedule_model.g.dart';

@HiveType(typeId: HiveAdapterType.localScheduleModel)
class LocalScheduleModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String localationName;
  @HiveField(2)
  final String date;
  LocalScheduleModel(
      {required this.localationName, required this.date, required this.id});
}
