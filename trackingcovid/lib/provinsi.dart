import 'package:trackingcovid/controller/get_post_prov.dart';
import 'package:trackingcovid/model/get_post_model_prov.dart';
import 'package:flutter/material.dart';

class Provinsi extends StatelessWidget {
  final GetPostProv _getPost = new GetPostProv();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            Icons.location_city,
                            size: 30,
                            color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            ),
                            Text('Provinsi : '+dataPost[index].Provinsi),
                            Text('Positif : '+dataPost[index].Kasus_Posi.toString()),
                            Text('Sembuh : '+dataPost[index].Kasus_Semb.toString()),
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