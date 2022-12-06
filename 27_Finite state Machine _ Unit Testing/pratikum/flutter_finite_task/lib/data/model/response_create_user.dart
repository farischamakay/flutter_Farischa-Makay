import 'dart:convert';

ResponseCreateUser responseCreateUserFromJson(String str) =>
    ResponseCreateUser.fromJson(json.decode(str));

String responseCreateUserToJson(ResponseCreateUser data) =>
    json.encode(data.toJson());

class ResponseCreateUser {
  ResponseCreateUser({
    required this.name,
    required this.job,
    required this.id,
    required this.createdAt,
  });

  String name;
  String job;
  String id;
  DateTime createdAt;

  factory ResponseCreateUser.fromJson(Map<String, dynamic> json) =>
      ResponseCreateUser(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
      };
}
