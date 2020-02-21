import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'log.dart';
import 'utils/constants.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
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
          "Correo Electronico",
          style: TextStyle(fontSize: 15, color: COLOR_7),
        ),
        Container(
          decoration: BoxDecoration(color: COLOR_7),
          child: TextField(
            controller: _emailController,
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
            obscureText: passwordOscure,
            decoration: InputDecoration(
                suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 1.0),
                    child: IconButton(
                      icon: Icon(
                        passwordOscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordOscure = !passwordOscure;
                        });
                      },
                    ))),
          ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                accept ? Icons.check_box : Icons.check_box_outline_blank,
                color: COLOR_2,
              ),
              onPressed: () {
                setState(() {
                  accept = !accept;
                });
              },
            ),
            Text(
              "ACEPTO LOS TERMINOS Y CONDICIONES DE USO",
              style: TextStyle(fontSize: 10, color: COLOR_7),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        RaisedButton(
          child: Text('REGISTRARSE'),
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
          "¿Ya tienes una cuenta?",
          style: TextStyle(fontSize: 13, color: COLOR_7),
          textAlign: TextAlign.center,
        ),
        MaterialButton(
            child: Text(
              "INGRESA",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: COLOR_7,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Log()));
            })
      ], padding: EdgeInsets.symmetric(horizontal: 24))),
    );
  }
}
