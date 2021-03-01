import 'package:trackingcovid/controller/get_post_glo.dart';
import 'package:trackingcovid/model/get_post_model_glo.dart';
import 'package:flutter/material.dart';

class Global extends StatelessWidget {
  final GetPostGlo _getPost = new GetPostGlo();

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
                            Icons.public,
                            size: 30,
                            color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            ),
                            Text('Negara : '+dataPost[index].Country_Region),
                            Text('Positif : '+dataPost[index].Confirmed.toString()),
                            Text('Sembuh : '+dataPost[index].Recovered.toString()),
                            Text('Meninggal : '+dataPost[index].Deaths.toString()),
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