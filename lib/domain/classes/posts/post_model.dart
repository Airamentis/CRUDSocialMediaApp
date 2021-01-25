import 'dart:convert';

import 'package:flutter/material.dart';

class Post {
  final int userID;
  final int id;
  final String title;
  final String body;
  Post({
    @required this.userID,
    @required this.id,
    @required this.title,
    @required this.body,
  });

  Post copyWith({
    int userId,
    int id,
    String title,
    String body,
  }) {
    return Post(
      userID: userId ?? this.userID,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userID,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Post(
      userID: map['userId'],
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(userId: $userID, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Post && o.userID == userID && o.id == id && o.title == title && o.body == body;
  }

  @override
  int get hashCode {
    return userID.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
  }
}
