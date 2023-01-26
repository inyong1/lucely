import 'dart:convert';

import 'package:get/get.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';
import 'package:lucely/app/data/models/user/user.dart';
import 'package:lucely/app/data/models/user/user_repository.dart';

import '../../datastate.dart';

class UserRepositoryImpl extends UserRepository {
  final LocalDataSource localDataSource;

  const UserRepositoryImpl(this.localDataSource);

  @override
  User? getCurrentUser() {
    String rawUser = localDataSource.readString(LocalDataSource.KEY_USER);
    if (rawUser.startsWith("{")) {
      User user = User.fromJson(jsonDecode(rawUser));
      return user;
    }
    return null;
  }

  @override
  Future<void> saveUserLogin(User user) {
    return localDataSource.writeString(key: LocalDataSource.KEY_USER, value: user.toString());
  }

  @override
  Future<List<User>> getRegisteredUser() async {
    final result = <User>[];
    final rawList = localDataSource.readString(LocalDataSource.KEY_REGISTERED_USER_LIST);
    if (rawList.startsWith("[")) {
      final jsonList = jsonDecode(rawList) as Iterable;
      return jsonList.map(User.fromJson).toList();
    }
    return result;
  }

  @override
  Future<DataState> registerUser(
      {required String email, required String password}) async {
    final registerdUserList = await getRegisteredUser();
    if (registerdUserList.any((element) => element.email == email)) {
      return DataStateError(message: "Email already registerd");
    }
    registerdUserList.add(User(
        email: email,
        password: password,
        id: DateTime.now().millisecondsSinceEpoch.toString()));
    final jsonList = registerdUserList.map((e) => e.toJson()).toList();
    await localDataSource.writeString(
        key: LocalDataSource.KEY_REGISTERED_USER_LIST, value: jsonEncode(jsonList));
    await Future.delayed(1.seconds);
    return DataStateSuccess();
  }

  @override
  Future<DataState<User>> login({required String email, required String password}) async {
    await Future.delayed(1.seconds);
    final registerdUserList = await getRegisteredUser();
    final cek = registerdUserList.where((element) => element.email == email).toList();
    if (cek.isEmpty) {
      return DataStateError(message: "Email not registered");
    }
    User user = cek.first;
    if (user.password != password) {
      return DataStateError(message: "Wrong password");
    }

    return DataStateSuccess(data: user);
  }
}
