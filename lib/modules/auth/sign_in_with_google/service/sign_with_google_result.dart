import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_with_google_result.freezed.dart';

@freezed
abstract class SignWithGoogleResult<T> with _$SignWithGoogleResult<T> {
  const factory SignWithGoogleResult.success(T data) = Sucess<T>;
  const factory SignWithGoogleResult.failure(String e) = Failure<T>;
}
