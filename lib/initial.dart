import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login.dart';

class Initial extends StatefulWidget {
  Initial({Key key}) : super(key: key);

  @override
  _InitialState createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  String marselo =
      "https://vignette.wikia.nocookie.net/memes-pedia/images/6/6a/Marselo.png/revision/latest/top-crop/width/360/height/450?cb=20200108165346&path-prefix=es";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Image(image: NetworkImage(marselo),height: 300
              ))
        ],
      )),
    );
  }
}
