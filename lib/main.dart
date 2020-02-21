import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/home.dart';
import 'package:practica_integradora_uno/initial.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

import 'utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primaryColor: PRIMARY_COLOR,
      ),
      home: Home(title: APP_TITLE),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    
    
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => Initial(),
      fullscreenDialog: true,
    );
  }
}

