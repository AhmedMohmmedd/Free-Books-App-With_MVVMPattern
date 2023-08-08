import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
             title: Text("Asset Image"),
             backgroundColor: Colors.deepOrangeAccent,
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Row(children: [
                Image.asset("assets/images/wallpaperflare.com_wallpaper.jpg", width: 170, height: 300),
                Image.asset("assets/images/wallpaperflare.com_wallpaper.jpg", width:170),

            ])
          )
       );
  }
}