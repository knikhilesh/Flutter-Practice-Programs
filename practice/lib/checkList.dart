import 'package:flutter/material.dart';

class CheckListDemo1 extends StatefulWidget {
  CheckListDemo1({Key? key, required this.product}) : super(key: key);
  final List<ProductList> product;
  @override
  _CheckListDemo1State createState() {
    return new _CheckListDemo1State();
  }
}

class _CheckListDemo1State extends State<CheckListDemo1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Shopping"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Expanded(
                  child: new ListView(
                    padding: new EdgeInsets.symmetric(vertical: 8.0),
                    children: widget.product.map((ProductList product) {
                      return new ShoppingItemList(product);
                    }).toList(),
                  )),
              ElevatedButton(
                child: Text('Buy'),
                onPressed: () {
                  for (ProductList p in widget.product) {
                    if (p.isCheck){
                      Text(p.name);
                    }
                  }
                },
              )
            ],
          ),
        ));
  }
}

class ShoppingItemList extends StatefulWidget {
  final ProductList product;
  ShoppingItemList(ProductList product)
      : product = product,
        super(key: new ObjectKey(product));
  @override
  ShoppingItemState createState() {
    return new ShoppingItemState(product);
  }
}

class ShoppingItemState extends State<ShoppingItemList> {
  final ProductList product;
  ShoppingItemState(this.product);
  @override
  Widget build(BuildContext context) {
    return new ListTile(
        title: new Row(
          children: <Widget>[
            new Expanded(child: new Text(product.name)),
            new Checkbox(
                value: product.isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    product.isCheck = value!;
                  });
                })
          ],
        ));
  }
}

class ProductList {
  String name;
  bool isCheck;
  ProductList(this.name, this.isCheck);
}