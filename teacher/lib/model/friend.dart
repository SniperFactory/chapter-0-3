import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Friend {
  String? imgUrl;
  String name;
  String? msg;
  String? music;

  Friend({
    required this.imgUrl,
    required this.name,
    required this.msg,
    required this.music,
  });

  // 제이슨을 받아서 Friend주는 능력
  // 제이슨 -> Friend
  // Map -> Friend

  factory Friend.fromMap(Map<String, dynamic> map) {
    return Friend(
      imgUrl: map['imgUrl'] != null ? map['imgUrl'] as String : null,
      name: map['name'] as String,
      msg: map['msg'] as String,
      music: map['music'] as String,
    );
  }

  factory Friend.fromJson(String source) =>
      Friend.fromMap(json.decode(source) as Map<String, dynamic>);
}
