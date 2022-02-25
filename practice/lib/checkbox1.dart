import 'package:flutter/material.dart';

class CheckBoxDemo1 extends StatefulWidget{
  _CheckBoxState1 createState() => _CheckBoxState1();

}

class _CheckBoxState1 extends State<CheckBoxDemo1> {

 bool valueFirst = false;
 bool valueSecond = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Flutter checkbox example'),
       ),
       body: Container(
         child: Column(
           children: <Widget>[
             SizedBox(
               width: 10,
             ),
             Text('Checkbox without header and subtitle', style: TextStyle(fontSize: 18),),
             Checkbox(
               checkColor: Colors.greenAccent,
               activeColor: Colors.red,
               value: this.valueFirst,
               onChanged: (bool? value) {
                 setState(() {
                   this.valueFirst = value!;
                 });
               },
             ),
             Checkbox(
               checkColor: Colors.blueGrey,
               activeColor: Colors.black12,

               value: this.valueSecond,
               onChanged: (bool? value) {
                 setState(() {
                   this.valueSecond = value!;
                 });
               },
             ),
           ],
         ),
       ),
     ),
   );
  }
}