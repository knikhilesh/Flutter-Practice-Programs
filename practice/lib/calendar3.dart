import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDemo4 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Calendar demo 4'),
       ),
       body: CalendarDemoHome4(),
     ),
   );
  }
}

class CalendarDemoHome4 extends StatefulWidget{

  @override
  _CalendarDemoHomeState createState() => _CalendarDemoHomeState();

}


class _CalendarDemoHomeState extends State<CalendarDemoHome4>{

  late CalendarController _controller;
  bool selectableDayPredicate = false;
  DateTime dateTime = DateTime.now();

  late DateTime _minDate, _maxDate;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _minDate = DateTime(2022,2,27,0,0,0);
    _maxDate = DateTime(2022,3,04,23,59,999);

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
          child:
          Column(
            children: <Widget>[

              Container(
            width: 400,
           height: 400,

          child: SfDateRangePicker(
            monthViewSettings: DateRangePickerMonthViewSettings(viewHeaderHeight: 50,dayFormat: 'EEE'),
            enablePastDates: true,
            selectionShape: DateRangePickerSelectionShape.rectangle,
            view: DateRangePickerView.month,
            minDate: _minDate,
            maxDate: _maxDate,
            todayHighlightColor: Colors.lightGreen,
            showNavigationArrow: true,
            headerStyle: const DateRangePickerHeaderStyle(
              backgroundColor: Colors.orange,
              textAlign: TextAlign.center,

            ),


            //monthViewSettings: DateRangePickerMonthViewSettings(blackoutDates:[DateTime(2022, 02, 18), DateTime(2022, 02, 20)]),
            //enablePastDates: false,

            initialDisplayDate: DateTime.now(),
            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.single,

          ),
        ),
            ],
          ),
        ),
    );
  }
}