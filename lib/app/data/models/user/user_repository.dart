import 'package:lucely/app/data/models/user/user.dart';

import '../../datastate.dart';

abstract class UserRepository {
  const UserRepository();

  User? getCurrentUser();

  Future<void> saveUserLogin(User user);

  Future<DataState> registerUser({
    required String email,
    required String password
  });

  Future<List<User>> getRegisteredUser();

  Future<DataState<User>> login({required String email, required String password});
}
