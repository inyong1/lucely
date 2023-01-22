import 'package:lucely/app/data/models/safe_convert.dart';

class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(json) => User(
        id: asString(json, "id"),
        name: asString(json, "name"),
        email: asString(json, "email"),
      );
}
