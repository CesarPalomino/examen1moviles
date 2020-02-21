/*import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/Cups/item_Cups.dart';

import '../home/home.dart';
import '../utils/constants.dart';
import 'item_Cups_details.dart';

class CupsPage extends StatelessWidget {
  final Map<String, List> productsMap;
  CupsPage({
    Key key,
    @required this.productsMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tazas"),
         leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Home(title: APP_TITLE)));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: productsMap["Tazas"].length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemCupsDetails(products: productsMap,index: index)));
              },
              child: ItemCups(
                drink: productsMap["Tazas"][index],
              ));
        },
      ),
    );
  }
}
*/