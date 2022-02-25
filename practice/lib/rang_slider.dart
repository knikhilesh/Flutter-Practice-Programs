import 'package:flutter/material.dart';

class RangSliderDemo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: MySliderApp1(),
   );
  }
}
class MySliderApp1 extends StatefulWidget{

  MySliderApp1();

    _MySliderState createState() => _MySliderState();
}
class _MySliderState extends State <MySliderApp1> {

  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      title: Text('Flutter Range Demo'),
    ),
    body: Padding(
      padding: EdgeInsets.all(15),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.volume_up,
              size: 40,
            ),
            Expanded(
              child: RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 100,
                divisions: 10,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values){
                  setState((){
                  _currentRangeValues = values;
                  });
                },
              ),
            ),
          ],
      ),
    ),
  );
  }
}