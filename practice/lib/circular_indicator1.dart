import 'package:flutter/material.dart';

class CircularIndeterminate1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Progress Bar Example'),
        ),
        body: Center(
            child: CircularProgressIndicatorDemo()
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class CircularProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.red,
      strokeWidth: 5,
    );
  }
}
