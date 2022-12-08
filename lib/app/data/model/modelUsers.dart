// To parse this JSON data, do
//
//     final dataUsers = dataUsersFromJson(jsonString);

import 'dart:convert';

DataUsers dataUsersFromJson(String str) => DataUsers.fromJson(json.decode(str));

String dataUsersToJson(DataUsers data) => json.encode(data.toJson());

class DataUsers {
    DataUsers({
        required this.status,
        required this.message,
        required this.data,
    });

    int status;
    String message;
    List<Users> data;

    factory DataUsers.fromJson(Map<String, dynamic> json) => DataUsers(
        status: json["status"],
        message: json["message"],
        data: List<Users>.from(json["data"].map((x) => Users.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Users {
    Users({
        required this.nisn,
        required this.password,
        required this.role,
        required this.nama,
    });

    String nisn;
    String password;
    String role;
    String nama;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        nisn: json["nisn"],
        password: json["password"],
        role: json["role"],
        nama: json["nama"],
    );

    Map<String, dynamic> toJson() => {
        "nisn": nisn,
        "password": password,
        "role": role,
        "nama": nama,
    };
}
