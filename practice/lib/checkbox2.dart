import 'package:flutter/material.dart';

class CheckBoxDemo2 extends StatefulWidget{
  _CheckBoxState createState() => _CheckBoxState();

}

class AlarmClass {
  String title;
  bool value;
  AlarmClass(this.title, this.value);
  @override
  String toString() {
    return 'AlarmClass{title: $title, value: $value}';
  }
}

class _CheckBoxState extends State<CheckBoxDemo2>{

  bool firstValue = false;
  bool secondValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
     appBar: AppBar(
      title: Text('Flutter CheckBox Example with header and subtitle'),
     ),
       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           children: <Widget>[
            SizedBox(
              width: 10,
            ),
             Text('CheckBox with header and Subtitle', style:  TextStyle(fontSize: 20),),
           CheckboxListTile(
             secondary: const Icon(Icons.alarm),
             title: const Text('Ringing at 4:00 Am every day'),
             subtitle: Text('Ringing after 12 hours'),
             value: this.firstValue,
             activeColor: Colors.lightGreen,
             onChanged: (bool? value){
               setState((){
                 this.firstValue = value!;
               });
             },
           ),
             CheckboxListTile(
               controlAffinity: ListTileControlAffinity.trailing,
               secondary: const Icon(Icons.alarm),
               activeColor: Colors.lightGreen,
               title: const Text('Ringing at 5:00 Pm every day'),
               subtitle: Text('Ringing after 12 hours'),
               value: this.secondValue,
               onChanged: (bool? value){
                 setState((){
                   this.secondValue = value!;
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