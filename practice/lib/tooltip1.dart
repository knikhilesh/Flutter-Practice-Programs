import 'package:flutter/material.dart';

class ToolTipDemo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: MyToolTipHomePage(),
   );
  }
}

class MyToolTipHomePage extends StatefulWidget{
  _MyToolTipState createState() => _MyToolTipState();
}
class _MyToolTipState extends State <MyToolTipHomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('ToolTip example'),
     ),
     body: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Container(
           margin: EdgeInsets.all(10),
           child: Tooltip(
             verticalOffset: 10,
             preferBelow: true,
             margin: EdgeInsets.all(5),
             waitDuration: Duration(seconds: 1),
             showDuration: Duration(seconds: 2),
             padding: EdgeInsets.all(10),
             height: 10,
             textStyle: TextStyle(
               fontSize: 10, color: Colors.white, fontWeight: FontWeight.normal
             ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.green,
             ),
             message: 'My Account',
             child: ElevatedButton(
               child: Icon(
                 Icons.account_box,
                 size: 50,
               ),
               onPressed: (){

               },
             ),
           ),
         ),
         Container(
           margin: EdgeInsets.all(10),
           child: Tooltip(
             message: 'My Account1',
             child: ElevatedButton(
               child: Text('hover on the button ', style: TextStyle(color: Colors.white),),
               style: ElevatedButton.styleFrom(
               primary: Colors.indigo,

               ),
               onPressed: (){

               },
             ),
           ),
         ),
       ],
     ),
   );
  }
}