import 'package:flutter/material.dart';

class IndeterminateProgressBar1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: LinearProgressIndicator1(),
    );
  }
}

class LinearProgressIndicator1 extends StatefulWidget{
  @override
  _MyProgressBarState createState() => _MyProgressBarState();
}
class _MyProgressBarState extends State<LinearProgressIndicator1>{

  late bool _loading;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Linear Progress Bar'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: _loading? LinearProgressIndicator(): Text(
              'Press Button for downloading',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            _loading = !_loading;
          });
        },
        tooltip: 'Download',
        child: Icon(Icons.cloud_download),
      ),
    );
  }
}