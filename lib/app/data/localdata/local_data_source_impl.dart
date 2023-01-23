import 'package:get_storage/get_storage.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final GetStorage storage;

  const LocalDataSourceImpl(this.storage) : super();

  @override
  void delete(String key) {
    storage.remove(key);
  }

  @override
  String readString(String key) {
    return storage.read(key) ?? "";
  }

  @override
  Future<void> writeString({required String key, required String value}) {
    return storage.write(key, value);
  }

  @override
  bool readBool(String key) {
    return storage.read<bool?>(key) ?? true;
  }

  @override
  Future<void> writeBool({required String key, required bool value}) {
    return storage.write(key, value);
  }
}
