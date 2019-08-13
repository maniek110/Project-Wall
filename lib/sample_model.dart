import 'dart:convert';

Welcome welcomeFromJson(String str) {
  final jsonData=json.decode(str);
  return Welcome.fromJson(jsonData);
}

String welcomeToJson(Welcome data) {
  final dat=data.toJson();
  return json.encode(dat);
}

class Welcome {
  int userId;
  int id;
  String title;
  String body;

  Welcome({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => new Welcome(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
