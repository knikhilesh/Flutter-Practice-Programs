import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';

class CalendarDemo6 extends StatelessWidget{
  const CalendarDemo6({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calendar demo 5'),
        ),
        body: CalendarDemoHome5(),
      ),
    );
  }
}

class CalendarDemoHome5 extends StatefulWidget{

  @override
  _CalendarDemoHomeState createState() => _CalendarDemoHomeState();

}


class _CalendarDemoHomeState extends State<CalendarDemoHome5>{

  final now = DateTime.now();

  @override
  void initState() {
    super.initState();


  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              width: 400,
              height: 400,
              /*child: DropdownDatePicker(
                firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
                lastDate: ValidDate(year: now.year, month: now.month, day: now.month),
              ),*/

            ),
          ],
        ),
      ),
    );
  }
}