import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';

import '../utils/constants.dart';
import '../utils/constants.dart';
import '../utils/constants.dart';

class ItemDrinks extends StatefulWidget {
  final ProductDrinks drink;
  ItemDrinks({Key key, @required this.drink, ti}) : super(key: key);

  @override
  _ItemDrinksState createState() => _ItemDrinksState();
}

class _ItemDrinksState extends State<ItemDrinks> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      color: COLOR_2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  "${widget.drink.productTitle}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "${widget.drink.productDescription}",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  "\$${widget.drink.productPrice.ceil()}",
                  style: Theme.of(context).textTheme.display2.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      "${widget.drink.productImage}",
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.favorite,
                                color: widget.drink.liked
                                    ? COLOR_5
                                    : PRIMARY_COLOR),
                            onPressed: () {
                              setState(() {
                                widget.drink.liked = !widget.drink.liked;
                              });
                            }),
                      ],
                    )
                  ],
                )),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
