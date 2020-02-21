import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

import '../models/product_drinks.dart';
import '../utils/constants.dart';
import 'drinks_page.dart';

class ItemDrinkDetails extends StatefulWidget {
  final Map<String, List> products;
  final int index;

  const ItemDrinkDetails({Key key, this.products, this.index})
      : super(key: key);

  @override
  _ItemDrinkDetailsState createState() => _ItemDrinkDetailsState();
}

class _ItemDrinkDetailsState extends State<ItemDrinkDetails> {
  String precio = "100";
  bool small = true;
  bool medium = false;
  bool big = false;
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
                    builder: (context) =>
                        DrinksPage(productsMap: widget.products)));
          },
        ),
        title: Text("${widget.products["Bebidas"][widget.index].productTitle}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 150,
                          alignment: Alignment.topCenter,
                          child: Image.network(
                            "${widget.products["Bebidas"][widget.index].productImage}",
                            fit: BoxFit.fitHeight,
                            height: 180,
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: IconButton(
                              icon: Icon(Icons.favorite,
                                  color: widget
                                          .products["Bebidas"][widget.index]
                                          .liked
                                      ? COLOR_5
                                      : PRIMARY_COLOR),
                              onPressed: () {
                                setState(() {
                                  widget.products["Bebidas"][widget.index]
                                          .liked =
                                      !widget.products["Bebidas"][widget.index]
                                          .liked;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "${widget.products["Bebidas"][widget.index].productTitle}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "${widget.products["Bebidas"][widget.index].productDescription}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "TAMAÑOS DISPONIBLES",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\$${widget.products["Bebidas"][widget.index].productPrice.ceil()}",
                      style: Theme.of(context).textTheme.display2.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                        child: Chip(
                            label: Text("Chico"),
                            backgroundColor:
                                small ? Colors.purple : Colors.grey),
                        onTap: () {
                          setState(() {
                            small = true;
                            medium = false;
                            big = false;
                            widget.products["Bebidas"][widget.index]
                                .productSize = ProductSize.CH;
                            widget.products["Bebidas"][widget.index]
                                .productPrice = widget.products["Bebidas"]
                                    [widget.index]
                                .productPriceCalculator();
                          });
                        }),
                    GestureDetector(
                        child: Chip(
                            label: Text("Mediano"),
                            backgroundColor:
                                medium ? Colors.purple : Colors.grey),
                        onTap: () {
                          setState(() {
                            small = false;
                            medium = true;
                            big = false;
                            widget.products["Bebidas"][widget.index]
                                .productSize = ProductSize.M;
                            widget.products["Bebidas"][widget.index]
                                .productPrice = widget.products["Bebidas"]
                                    [widget.index]
                                .productPriceCalculator();
                          });
                        }),
                    GestureDetector(
                        child: Chip(
                            label: Text("Grande"),
                            backgroundColor: big ? Colors.purple : Colors.grey),
                        onTap: () {
                          setState(() {
                            small = false;
                            medium = false;
                            big = true;
                            widget.products["Bebidas"][widget.index]
                                .productSize = ProductSize.G;
                            widget.products["Bebidas"][widget.index]
                                .productPrice = widget.products["Bebidas"]
                                    [widget.index]
                                .productPriceCalculator();
                          });
                        }),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  RaisedButton(
                    child: Text('AGREGAR AL CARRITO'),
                    color: COLOR_3,
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ), // New code
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  RaisedButton(
                    child: Text('COMPRAR AHORA'),
                    color: COLOR_3,
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ), // New code
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*void _upg() {
    setState(() {
      precio =
          "\$${widget.products["Bebidas"][widget.index].productPrice.ceil()}";
    });
  }*/
}
