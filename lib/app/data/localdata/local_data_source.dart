import '../models/user.dart';

abstract class LocalDataSource {
  void writeString({required String key, required String value});

  String readString(String key);

  void delete(String key);
}
