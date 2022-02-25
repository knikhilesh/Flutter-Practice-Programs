import 'package:flutter/material.dart';

class ThemeDemo4 extends StatelessWidget{
  const ThemeDemo4({Key? key}) : super(key: key);


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
/*
    return Theme(
      data: Theme.of(context).copyWith(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
      child: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.person),
      ),
    );
 */
  return Container(
    color: Theme.of(context).colorScheme.secondary,
    child: Text(
      'Text with a background color',
      style: Theme.of(context).textTheme.headline1,
    ),

  );

  }
}