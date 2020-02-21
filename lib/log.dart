import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/register.dart';

import 'home/home.dart';
import 'utils/constants.dart';

class Log extends StatefulWidget {
  Log({Key key}) : super(key: key);

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool passwordOscure = true;
  bool accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
          child: ListView(children: <Widget>[
        SizedBox(height: 40.0),
        Column(
          children: <Widget>[
            Image.network(
                "https://images7.memedroid.com/images/UPLOADED686/5e2dbfacb916c.jpeg",
                height: 150),
            SizedBox(height: 16.0),
          ],
        ),
        SizedBox(height: 12.0),
        Text(
          "Nombre Completo",
          style: TextStyle(fontSize: 15, color: COLOR_7),
        ),
        Container(
          decoration: BoxDecoration(color: COLOR_7),
          child: TextField(
            controller: _usernameController,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          "Contraseña",
          style: TextStyle(fontSize: 15, color: COLOR_7),
        ),
        Container(
          decoration: BoxDecoration(color: COLOR_7),
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
            ),
          ),
        ),
        SizedBox(height: 12.0),
        RaisedButton(
          child: Text('ENTRAR'),
          color: COLOR_3,
          elevation: 8.0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ), // New code
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home(title: APP_TITLE)));
          },
        ),
        SizedBox(height: 12.0),
        Text(
          "¿Olvidaste tu contraseña?",
          style: TextStyle(fontSize: 15, color: COLOR_7),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80.0),
        Text(
          "¿Aun no tienes una cuenta?",
          style: TextStyle(fontSize: 13, color: COLOR_7),
          textAlign: TextAlign.center,
        ),
        MaterialButton(
            child: Text(
              "REGISTRATE",
              style: TextStyle(
                color: COLOR_7,
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            })
      ], padding: EdgeInsets.symmetric(horizontal: 24))),
    );
  }
}
