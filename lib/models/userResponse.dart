// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'dart:convert';

UserResponse userResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String userResponseToJson(UserResponse data) => json.encode(data.toJson());

class UserResponse {
  UserResponse({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.password,
    this.addersses,
    this.isactive,
  });

  int? id;
  String? name;
  String? phone;
  String? email;
  String? password;
  String? addersses;
  int? isactive;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        addersses: json["addersses"],
        isactive: json["isactive"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "addersses": addersses,
        "isactive": isactive,
      };
}
