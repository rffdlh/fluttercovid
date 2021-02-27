import 'package:trackingcovid/model/get_post_model_prov.dart';
import 'package:trackingcovid/get/get_post_prov.dart';
import 'package:flutter/material.dart';

class Provinsi extends StatelessWidget {
  final GetPostProv _getPost = new GetPostProv();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Data dari Api'),
      ),
      body: FutureBuilder(
        future: _getPost.manggilPostData(),
        builder: (context, AsyncSnapshot<List<Post>> snapshot){

          if (snapshot.hasData) {
            List<Post> dataPost = snapshot.data;

            return ListView.builder(
              itemCount: dataPost.length,
              itemBuilder: (context, index){
                return Container(
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            Icons.android,
                            size: 30,
                            color: Colors.amber,
                          ),),
                          Text('Provinsi : /n'+dataPost[index].Provinsi),
                          Text('Positif : /n'+dataPost[index].Kasus_Posi.toString()),
                          Text('Sembuh : /n'+dataPost[index].Kasus_Semb.toString()),
                          Text('Meninggal : '+dataPost[index].Kasus_Meni.toString()),
                      ],)
                    )
                  );
                });
              }
            },
          ),
        );
      }
    }