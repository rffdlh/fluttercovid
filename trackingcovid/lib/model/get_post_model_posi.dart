import 'package:flutter/foundation.dart';

//sebuah model
class Post {
  
  //definisi key nya
  final String name;
  final String value;

  //definisi ke object
  Post({
  @required this.name,
  @required this.value
  });

  //Menampung data dengan format json
  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      name: json['name'] as String,
      value: json['value'] as String,
    );
  }
}