import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';

import '../utils/constants.dart';
import '../utils/constants.dart';
import '../utils/constants.dart';

class ItemGrains extends StatefulWidget {
  final ProductGrains grain;
  ItemGrains({Key key, @required this.grain, ti}) : super(key: key);

  @override
  _ItemGrainsState createState() => _ItemGrainsState();
}

class _ItemGrainsState extends State<ItemGrains> {
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
                  "${widget.grain.productTitle}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "${widget.grain.productDescription}",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  "\$${widget.grain.productPrice.ceil()}",
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
                      "${widget.grain.productImage}",
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.favorite,
                                color: widget.grain.liked
                                    ? COLOR_5
                                    : PRIMARY_COLOR),
                            onPressed: () {
                              setState(() {
                                widget.grain.liked = !widget.grain.liked;
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
