import 'package:anime_suggester/long.dart';
import 'package:anime_suggester/short.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhomepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Me"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(5.0),
              child:Image.asset('assets/images/UUbzcOT.png')
            ),
            Container(
              padding: EdgeInsets.all(27.0),
              child: Text(
                "I am an Anime Enthusiast. I watched a lot of anime.Some are good and some are bad.In this app, I am going to suggest you about best short and long animes and it's time duration to complete.",
                style: TextStyle(fontSize: 20.0,color: Colors.red,),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/images/V_image.jpg'),
                      minRadius: 50.0,
                      maxRadius: 60.0,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent,
                ])
              ),
            ),
            CustomTile(Icons.donut_small,'LONG ANIME',(){Navigator.push(context,MaterialPageRoute(builder: (context)=>longAnime()));}),
            CustomTile(Icons.donut_small,'SHORT ANIME',(){Navigator.push(context,MaterialPageRoute(builder: (context)=>shortAnime()));}),
          ],
        ),
      ),
      
    );
  }
}

class CustomTile extends StatelessWidget {

  IconData icon;
  String text;
  Function onTap;

  CustomTile(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: InkWell(
        onTap:onTap,
        splashColor: Colors.orangeAccent,
        child: Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Icon(icon),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(fontSize: 18.0),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}