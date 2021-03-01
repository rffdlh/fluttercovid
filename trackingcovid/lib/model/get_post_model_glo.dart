import 'package:flutter/foundation.dart';

//sebuah model
class Post {
  
  //definisi key nya
  final String Country_Region;
  final int Confirmed;
  final int Recovered;
  final int Deaths;

  //definisi ke object
  Post({
  @required this.Country_Region,
  @required this.Confirmed,
  @required this.Recovered,
  @required this.Deaths});

  //Menampung data dengan format json
  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      Country_Region: json['attributes']['Country_Region'] as String,
      Confirmed: json['attributes']['Confirmed'] as int,
      Recovered: json['attributes']['Recovered'] as int,
      Deaths: json['attributes']['Deaths'] as int,
    );
  }
}