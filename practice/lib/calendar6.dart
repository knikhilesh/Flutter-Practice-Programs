import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarExample6 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Calendar Example 6'),
       ),
       body: MyCalendarPage(),
     ),
   );
  }
}

class MyCalendarPage extends StatefulWidget{

  @override
  _MyCalendarPageState createState() => _MyCalendarPageState();

}
class _MyCalendarPageState extends State<MyCalendarPage>{

late CalendarController calendarController;
static final now = DateTime.now();
final dropdownDatePicker = DropdownDatePicker(
  firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
  lastDate: ValidDate(year: now.year, month: now.month, day: now.day),
  textStyle: TextStyle(fontWeight: FontWeight.bold),
  dropdownColor: Colors.blue[200],
  dateHint: DateHint(year: 'year', month: 'month', day: 'day'),
  ascending: false,
);



@override
void initState() {
    // TODO: implement initState
    super.initState();
    calendarController = CalendarController();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(
     child: SingleChildScrollView(
       child: Column(
       children: <Widget>[

         TableCalendar(

            initialCalendarFormat: CalendarFormat.month,

            calendarController: calendarController,
            weekendDays: const [DateTime.sunday],
            formatAnimation: FormatAnimation.slide,
            headerVisible: true,
            rowHeight: 50,
            headerStyle: const HeaderStyle(
              formatButtonShowsNext: false,
              headerPadding: EdgeInsets.all(20),
              formatButtonVisible: true,
              centerHeaderTitle: true,

            ),
            calendarStyle: CalendarStyle(
              todayColor: Colors.green,
              selectedColor: Theme.of(context).primaryColor,
            ),
          ),
       ],
     ),
     )
   );
  }
}