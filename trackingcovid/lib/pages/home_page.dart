import 'dart:ui';

import 'package:trackingcovid/core/consts.dart';
import 'package:trackingcovid/home.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.only(top: 30, bottom: 25),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/virus2.png'),
                _buildHeader(),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                text: 'Gejala ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                    text: 'COVID 19',
                    style: TextStyle(
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildSymptomItem('assets/images/1.png', 'Demam'),
                _buildSymptomItem('assets/images/2.png', 'Batuk kering'),
                _buildSymptomItem('assets/images/3.png', 'Sakit kepala'),
                _buildSymptomItem('assets/images/4.png', 'Sesak Napas'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                text: 'Pencegahan ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildPrevention('assets/images/a1.png', 'SELALU', 'Diam Di Rumah'),
                _buildPrevention('assets/images/a2.png', 'TUTUP MULUT', 'Saat Batuk Dan Bersin'),
                _buildPrevention('assets/images/a3.png', 'GUNAKAN', 'Disinfektan & Hand Sanitizer'),
                _buildPrevention('assets/images/a4.png', 'SELALU', 'Jaga Jarak'),
                _buildPrevention('assets/images/a5.png', 'SELALU', 'Gunakan Masker'),
                _buildPrevention('assets/images/a6.png', 'SERING MENCUCI', 'Tangan Dengan Sabun'),
              ],
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .85,
                height: 60,
                child: Center(
                  child: Text(
                    'INFO LAINNYA',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

  Widget _buildSymptomItem(String path, String text) {
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
              ),
              gradient: LinearGradient( colors: [ 
                Colors.purple.withOpacity(.0001),
                Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                ),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 15),
                child: Image.asset(path),
                margin: EdgeInsets.only(right: 20),
                ),
                SizedBox(height: 7),
                Text(text,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        }

  Widget _buildPrevention(String path, String text1, String text2) {
    return Column(
      children: <Widget>[
        Container(
          width: 250,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
              ),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: <Widget>[
                    Image.asset(path),
                    SizedBox(width: 10),
                    RichText(text: TextSpan(
                      text: "$text1\n",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: text2,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          )
                        )
                      ]
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(right: 20),
              ),
            ],
          );
        }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'COVID 19', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Tetap Di Rumah', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '- Mari jadikan dunia ini tempat yang lebih aman hanya dengan tetap berada di rumah',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '- Tetap tinggal di rumah, tidak bepergian dan tidak mudik, ini adalah kebijakan yang paling baik',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '- Di saat seperti ini keselamatan ialah terpenting, jangan bepergian bila tidak sangat penting dan darurat.',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}