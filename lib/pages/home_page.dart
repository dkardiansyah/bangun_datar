import 'package:bangun_datar_app/pages/Panjang.dart';
import 'package:bangun_datar_app/pages/Persegi.dart';
import 'package:bangun_datar_app/pages/Segitiga.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [

          InkWell(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));

          }
        ,child: CustomMenu(imageAssets: "assets/persegi.jpg", title: "persegi")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PanjangPage()));

              }
              ,child: CustomMenu(imageAssets: "assets/panjang.jpg", title: "persegiPanjang")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));

              }
              ,child: CustomMenu(imageAssets: "assets/segitiga.jpg", title: "Segitiga")),
           ]
    )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(title),

        ],
      ),
    );
  }
}
