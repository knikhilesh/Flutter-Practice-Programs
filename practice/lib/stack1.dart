import 'package:flutter/material.dart';

class StackDemo1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Stack Example'),
       ),
       body: MysStackWidget(),
     )
   );
  }
}

class MysStackWidget extends StatefulWidget{

  @override
  _MyStackWidgetState createState() => _MyStackWidgetState();

}

class _MyStackWidgetState extends State <MysStackWidget>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Center(
     child: Stack(
       fit: StackFit.passthrough,

       children: [
        Container(
          height: 300,
          width: 400,
          color: Colors.green,
          child: Center(
            child: Text(
              'Top Widget Green',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
         Positioned(
           top: 20,
           right: 30,
           child: Container(
             height: 100,
             width: 150,
             color: Colors.blue,
             child: Center(
               child: Text(
                 'Middle Widget',
                 style: TextStyle(color: Colors.white,fontSize: 20),
               ),
             ),
           ),
         ),
         Positioned(
           top: 30,
           left: 20,
           child: Container(
             height: 100,
             width: 150,
             color: Colors.orange,
             child: Center(
               child: Text(
                 'Bottum Widget',
                 style: TextStyle(color: Colors.white, fontSize: 20),
               ),
             ),
           ),
         )
       ],
     ),
   );
  }
}