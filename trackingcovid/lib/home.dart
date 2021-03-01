import 'package:flutter/material.dart';
import 'package:trackingcovid/core/consts.dart';

// import 'positif.dart' as positif;
// import 'sembuh.dart' as sembuh;
// import 'meninggal.dart' as meninggal;
import 'indonesia.dart' as indonesia;
import 'provinsi.dart' as provinsi;
import 'global.dart' as global;

  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
    }

    class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
      TabController controller;
      @override
      void initState() {
        controller = new TabController(length: 3, vsync: this);
        super.initState();
      }

      @override
      void dispose() {
        controller.dispose();
        super.dispose();
        }
        
        @override
        Widget build(BuildContext context) {
          return new Scaffold(
            backgroundColor: AppColors.backgroundColor,
            appBar: AppBar(
              backgroundColor: AppColors.mainColor,
              title: new Text('Tracking Covid',
              style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                ),
              ),
              bottom: new TabBar(
                controller: controller,
                tabs: <Widget>[
                      new Tab(icon: new Icon(Icons.assistant_photo_rounded), text: 'Indonesia',),
                      new Tab(icon: new Icon(Icons.location_city), text: 'Provinsi',),
                      new Tab(icon: new Icon(Icons.public), text: 'Global',),
                      // new Tab(icon: new Icon(Icons.home_work), text: 'Kota',),
                      // new Tab(icon: new Icon(Icons.home_work_rounded), text: 'Kecamatan',),
                      // new Tab(icon: new Icon(Icons.home), text: 'Kelurahan',),
                      // new Tab(icon: new Icon(Icons.how_to_reg_rounded), text: 'RW',),
                  ],
                ),
              ),
              body: new TabBarView(
                controller: controller,
                children: <Widget>[
                  new indonesia.Indonesia(),
                  new provinsi.Provinsi(),
                  new global.Global(),
                ],
              ),
            );
          }
        }