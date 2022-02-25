import 'package:flutter/material.dart';

class IconDemo1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyIconPage(),
    );
  }
}

class MyIconPage extends StatefulWidget {
  @override
  _MyIconPageState createState() => _MyIconPageState();
}

class _MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Icon Tutorial'),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Icon(Icons.camera_enhance,  size: 70,
                    color:Colors.green ),
                Text('Camera'),
              ],
            ),

            Column(
              children: [
                Icon(Icons.camera_front, size: 70,
                    color:Colors.orange),
                Text('Front Camera'),
              ],
            ),

            Column(
              children: [
                Icon(Icons.camera_rear, size: 70,
                    color:Colors.black),
                Text('Rear Camera'),
              ],
            ),

          ]),
    );
  }
}