import 'package:flutter/material.dart';

class SliderDemo1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: MySliderApp(),
   );
  }
}

class MySliderApp extends StatefulWidget {

  _MySliderState createState() => _MySliderState();

}

class _MySliderState extends State<MySliderApp>{

  int _value = 6;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      title: Text('Flutter Slider Demo'),
    ),
    body: Padding(
      padding: EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(Icons.volume_up, size: 40,),
        Expanded(
          child: Slider(
            value: _value.toDouble(),
            min: 1,
            max: 20,
            divisions: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.orange,
            label: 'Set volume value',
            onChanged: (double newValue){
                setState(() {
                  _value = newValue.round();
                });
            },
            semanticFormatterCallback: (double newValue){
              return '${newValue.round()} dollars';
            },
          ),
        )

      ],
    ),
    ),
  );
  }
}