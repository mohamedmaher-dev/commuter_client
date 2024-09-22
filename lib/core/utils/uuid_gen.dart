import 'package:uuid/uuid.dart';

class UuidGen {
  const UuidGen._();
  static const _uuid = Uuid();
  static String get fromTimeBase => _uuid.v1();
}
