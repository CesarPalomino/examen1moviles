//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/log.dart';
import 'package:practica_integradora_uno/register.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: <Widget>[
          SizedBox(height: 50.0),
          Column(
            children: <Widget>[
              Image.network("https://pbs.twimg.com/media/EKydvYSXUAE3yLI.jpg",
                  height: 160),
              SizedBox(height: 16.0),
            ],
          ),
          SizedBox(height: 50.0),
          RaisedButton(
            child: Text('REGISTRARSE'),
            color: COLOR_3,
            elevation: 8.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ), // New code
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
          ),
          SizedBox(height: 30.0),
          RaisedButton(
            child: Text('INGRESA'),
            color: COLOR_3,
            elevation: 8.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ), // New code
            onPressed: () {
               Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Log()));
            },
          ),
        ],
      )),
    );
  }
}
