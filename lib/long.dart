import 'package:flutter/material.dart';

class longAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long Anime"),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            CardAll("assets/images/one-piece.jpg",
                "One Piece: According to me, One piece is the Greatest Anime of all time.It is written by Eiichiro Oda. It is still ongoing.Recently it completed 900 episodes.Baseline of the story is a guy named luffy(pirate) trying to find ONE PIECE which is the greatest treasure."),
            CardAll('assets/images/naruto.jpg',
                "Naruto: Naruto Uzumaki, a mischievous adolescent ninja, struggles as he searches for recognition and dreams of becoming the Hokage, the village's leader and strongest ninja."),
            CardAll('assets/images/dbs.jpg', 
                "DBS: Dragon Ball Super is best of its franchise.This series mainly revolves on Goku as it is Toriyama's wish.The main attraction of this series is the last tournament.Fighting scenes are awesome.in this series,they took goku's power to god level. "),
            CardAll('assets/images/bleach.jpg',
                "Bleach: According to me there are three most popularv animes. They are one pece ,naruto and bleach.In this series Ichigo(protoganist) is a death god.This series is very nice and interesting.It has around 300 episodes "),
            CardAll('assets/images/hunter.jpg',
                "Hunter X Hunter: An excellent shounen manga/anime touching upon various genres, it has action, analysis, character development, and high-level detailing. It is an exciting manga/anime which is pretty unpredictable."),
            CardAll('assets/images/doremon.jpg',
                "Doremon: This is a very funny animation series about a robot from the future named Doraemon. This robot was sent by Nobita's grand-grandson or something to help Nobita through every little bit of trouble.It is a beautiful series.Its mostly for kids"),
          ],
        ),
      ]),
    );
  }
}

class CardAll extends StatelessWidget {
  String img;
  String text;
  CardAll(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset(img),
        Padding(padding: EdgeInsets.all(5), child: Text(text))
      ],
    ));
  }
}
