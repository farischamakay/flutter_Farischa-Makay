import 'dart:convert';

BodyUsers bodyUsersFromJson(String str) => BodyUsers.fromJson(json.decode(str));

String bodyUsersToJson(BodyUsers data) => json.encode(data.toJson());

class BodyUsers {
  BodyUsers({
    required this.name,
    required this.job,
  });

  String name;
  String job;

  factory BodyUsers.fromJson(Map<String, dynamic> json) => BodyUsers(
        name: json["name"],
        job: json["job"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
      };
}
