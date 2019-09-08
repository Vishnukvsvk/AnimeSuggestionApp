import 'package:flutter/material.dart';

class shortAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short Anime"),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            CardAll("assets/images/punch1.jpg",
                'One Punch Man: It is a very great anime to watch.The storyline is basic but the screenplay is awesome.The animation is awesome and I suggest everyone to watch it.Currently,two seasons are finished with 11 episodes each.'),
            CardAll("assets/images/deathnote.jpg",
                'Death Note: If you love mstery,then this is the correct anime for you.Death Note is based upon a student who gets a notebook in which if we write a name in that book,the person of that name dies.So the student tries to eradicate all criminals.Finding him is the storyline of this anime.'),
            CardAll("assets/images/ghoul.jpg",
                'Tokto Ghoul: A beautifully written show with an unique plot line that questions about the methods of living survival of the fittest or Co-existence of two species together .This show arouses questions about the right way of living through a war between the two species who claim to be the dominant race.With the amazing soundtracks and beauty of animation technology they have built an masterpiece.'),
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
