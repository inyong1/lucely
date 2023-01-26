import 'dart:convert';

import 'package:lucely/app/data/models/safe_convert.dart';

class User {
  final String id;
  String name = "Demo User";
  final String email;
  final String password;

  User({required this.id, required this.email, this.password = ""}) {
    name = "Demo User $id";
  }

  factory User.fromJson(json) => User(
        id: asString(json, "id"),
        email: asString(json, "email"),
        password: asString(json, "password"),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
      };

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
