import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

import 'home/home.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home(title: APP_TITLE)));
          },
        ),
        title: Text(PROFILE_TITLE),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 150,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      PROFILE_PICTURE,
                    ),
                    minRadius: 40,
                    maxRadius: 80,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  PROFILE_NAME,
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(PROFILE_EMAIL),
                SizedBox(
                  height: 16,
                ),
                ListTile(
                  title: Text(PROFILE_CART),
                  leading: Icon(Icons.shopping_cart, color: PRIMARY_COLOR),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(PROFILE_WISHES),
                  leading: Icon(Icons.favorite_border, color: PRIMARY_COLOR),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(PROFILE_HISTORY),
                  leading: Icon(Icons.shopping_cart, color: PRIMARY_COLOR),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(PROFILE_SETTINGS),
                  leading: Icon(
                    Icons.settings,
                    color: PRIMARY_COLOR,
                  ),
                  onTap: () {},
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
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
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
