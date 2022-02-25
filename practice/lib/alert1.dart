import 'package:flutter/material.dart';

class AlerDialog1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appTitle = 'Flutter Basic Alert Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyAlert(),
      ),
    );
  }
}
class MyAlert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text('Show Alert'),
        onPressed: (){
          showAlertDialog(context);
        },
      ),
    );
  }
}
showAlertDialog(BuildContext context){
  Widget okButton = ElevatedButton(
      onPressed: (){
        Navigator.of(context).pop();
        },
      child: Text('OK')
  );
  AlertDialog alert = AlertDialog(
    title: Text('simple alert'),
    content: Text('this is an alert message'),
    actions: [
      okButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      },
  );
}