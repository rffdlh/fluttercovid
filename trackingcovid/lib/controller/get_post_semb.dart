import 'dart:convert';
import 'package:http/http.dart';
import 'package:trackingcovid/model/get_post_model_semb.dart';

//sebuah controller
class GetPostSemb {
  final String getposturl = "https://api.kawalcorona.com/sembuh";

  //mengambil data
  Future<List<Post>> manggilPostData() async{
    Response res = await get(getposturl);
  // Mengubah json ke string
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
  //data di tampung ke dalam list model post dan di rubah ke format json
  List<Post> postData = body.map((dynamic item) => Post.fromJson(item)).toList();
  return postData;
    }
    else{
      throw "Data Tidak Ada";
    }
  }
}