import 'package:flutter/material.dart';

class ThemeDemo3 extends StatelessWidget{
  const ThemeDemo3({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Theme Example Demo2'),
       ),
       body: MyThemePage1(),
     ),
   );
  }
}

class MyThemePage1 extends StatefulWidget{

  @override
  _MyThemePageState createState() => _MyThemePageState();

}

class _MyThemePageState extends State <MyThemePage1> {

  @override
  Widget build(BuildContext context) {

  return Theme(
    data: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
    ),
    child: FloatingActionButton(
      onPressed: () {

      },
      child: Icon(Icons.person),
    ),
  );
  }
}