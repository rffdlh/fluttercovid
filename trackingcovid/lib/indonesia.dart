import 'package:trackingcovid/controller/get_post_indo.dart';
import 'package:trackingcovid/model/get_post_model_indo.dart';
import 'package:flutter/material.dart';

class Indonesia extends StatelessWidget {
  final GetPostIndo _getPost = new GetPostIndo();

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
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('Terakhir Update:', style: TextStyle(fontSize: 20, fontFamily: "Serif")),
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.red,
                          padding: const EdgeInsets.all(25.0),
                          margin: EdgeInsets.all(10.0),
                          width: 400,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.assistant_photo_rounded,
                                    size: 30,
                                    color: Colors.amber,
                                    ),
                                  ),
                                    Text(''+dataPost[index].name, style: TextStyle(fontSize: 30, fontFamily: "Serif", fontWeight: FontWeight.bold)),
                                    Text('Positif : '+dataPost[index].positif),
                                    Text('Sembuh : '+dataPost[index].sembuh),
                                    Text('Meninggal : '+dataPost[index].meninggal),
                                ],)
                              )
                            ),
                          ],
                        ),
                      ],
                    );
                  });
                }
              },
            ),
          );
        }
      }