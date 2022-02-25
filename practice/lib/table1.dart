import 'package:flutter/material.dart';

class TableDemo1 extends StatefulWidget {

  const TableDemo1({Key? key}) : super(key: key);


  @override
  _TableExample createState() => _TableExample();

}

class _TableExample extends State<TableDemo1> {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Table Example'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow( children: [
                        Column(children:[Text('Name', style: TextStyle(fontSize: 20.0))]),
                        Column(children:[Text('Contact No.', style: TextStyle(fontSize: 20.0))]),
                        Column(children:[Text('Address', style: TextStyle(fontSize: 20.0))]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('Andrew')]),
                        Column(children:[Text('4785612341')]),
                        Column(children:[Text('Los Angeles')]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('James')]),
                        Column(children:[Text('6795461237')]),
                        Column(children:[Text('Manchester')]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('Smith')]),
                        Column(children:[Text('5898787658')]),
                        Column(children:[Text('Melbourne')]),
                      ]),
                    ],
                  ),
                ),
              ])
          )),
    );
  }
}