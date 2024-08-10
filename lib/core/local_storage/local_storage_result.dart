import 'package:freezed_annotation/freezed_annotation.dart';
part 'local_storage_result.freezed.dart';

@freezed
abstract class LocalStorageResult<T> with _$LocalStorageResult<T> {
  const factory LocalStorageResult.success({T? result}) = Success<T>;
  const factory LocalStorageResult.failure({required String error}) =
      Failure<T>;
}
