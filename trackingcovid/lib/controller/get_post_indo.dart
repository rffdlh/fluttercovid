import 'dart:convert';
import 'package:http/http.dart';
import 'package:trackingcovid/model/get_post_model_indo.dart';

class GetPostIndo {
  final String getposturl = "https://api.kawalcorona.com/indonesia";

  Future<List<Post>> manggilPostData() async{
    Response res = await get(getposturl);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> postData = body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    }
    else{
      throw "Data tidak ada";
    }
  }
}