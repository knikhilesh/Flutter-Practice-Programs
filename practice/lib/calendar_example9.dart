import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarExample9 extends StatelessWidget {

  const CalendarExample9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2122));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;

      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SfCalendar(
              view: CalendarView.month,
            ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               ElevatedButton(
                 onPressed: () => _selectDate(context),
                 child: Text('Select date'),
               ),
               Text(currentDate.toString()),
             ],
           ) ,
          ],
        ),
      ),
    );
  }
}