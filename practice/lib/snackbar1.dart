//import 'dart:html';

import 'package:flutter/material.dart';

class SnackBarDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
       primaryColor: const Color(0xFF43a047),
       primaryColorBrightness: Brightness.dark,

     ),
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: Text('Flutter SnackBar Demo '),
       ),
       body: SnackBarPage(),
     ),
   );
  }
}
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: ElevatedButton(
       child: Text('Show snackBar', style: TextStyle(fontSize: 20, color: Colors.black),),
       onPressed: (){
         final snackBar = SnackBar(
           elevation: 6.0,
         //shape: CircleBorder(),
           //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
           //animation: ,
           shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(28.0),),
           behavior: SnackBarBehavior.floating,
           backgroundColor: Colors.black,
          content: Text('This is Snackbar message'),
           duration: Duration(seconds: 5),
           action: SnackBarAction(
             label: 'Undo',
             onPressed: (){

             },
           ),
         );
         ScaffoldMessenger.of(context).showSnackBar(snackBar);
       },
     ),
   );
  }
}