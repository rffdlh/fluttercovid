import 'package:flutter/foundation.dart';

//sebuah model
class Post {
  
  //definisi key nya
  final String Provinsi;
  final int Kasus_Posi;
  final int Kasus_Semb;
  final int Kasus_Meni;

  //definisi ke object
  Post({
  @required this.Provinsi,
  @required this.Kasus_Posi,
  @required this.Kasus_Semb,
  @required this.Kasus_Meni});

  //Menampung data dengan format json
  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      Provinsi: json['attributes']['Provinsi'] as String,
      Kasus_Posi: json['attributes']['Kasus_Posi'] as int,
      Kasus_Semb: json['attributes']['Kasus_Semb'] as int,
      Kasus_Meni: json['attributes']['Kasus_Meni'] as int,
    );
  }
}