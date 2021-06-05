import 'package:flutter/material.dart';

class User{
  final String token,id;


  User({
    @required this.token,
    @required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      token: json['token'],
      id: json['id'],
    );
  }
}