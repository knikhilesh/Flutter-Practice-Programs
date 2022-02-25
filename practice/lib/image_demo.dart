import 'package:flutter/material.dart';

class ImageDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter FadeInImage Demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FadeInImage.assetNetwork(
                  placeholder: 'images/computer1.png',
                  image: 'https://picsum.photos/250?image=9',
                  height: 400,
                  width: 250
              ),
              Text(
                'It is an image displays from the given url.',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
