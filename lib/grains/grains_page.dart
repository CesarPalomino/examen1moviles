import 'package:flutter/material.dart';


import '../home/home.dart';
import '../utils/constants.dart';
import 'item_grains.dart';
import 'item_grains_details.dart';

class GrainsPage extends StatelessWidget {
  final Map<String, List> productsMap;
  GrainsPage({
    Key key,
    @required this.productsMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Café de Grano"),
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
        itemCount: productsMap["Granos"].length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemGrainDetails(products: productsMap,index: index)));
              },
              child: ItemGrains(
                grain: productsMap["Granos"][index],
              ));
        },
      ),
    );
  }
}

class ItemGrainsDetails {
}
