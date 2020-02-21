import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/drinks/item_drinks.dart';

import '../home/home.dart';
import '../utils/constants.dart';
import 'item_drinks_details.dart';

class DrinksPage extends StatelessWidget {
  final Map<String, List> productsMap;
  DrinksPage({
    Key key,
    @required this.productsMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bebidas"),
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
        itemCount: productsMap["Bebidas"].length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemDrinkDetails(products: productsMap,index: index)));
              },
              child: ItemDrinks(
                drink: productsMap["Bebidas"][index],
              ));
        },
      ),
    );
  }
}
