import '../models/user/user.dart';

abstract class LocalDataSource {
  const LocalDataSource();

static const String KEY_USER = "user";
static const String KEY_REGISTERED_USER_LIST = "registered_user_list";
static const String KEY_IS_FIRST_RUN = "is_first_run";

  Future<void> writeString({required String key, required String value});

  String readString(String key);

  void delete(String key);

  bool readBool(String key);

  Future<void> writeBool({required String key, required bool value});
}
