import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDemo2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Calendar Demo 2'),
       ),
       body: CalendarDemoPage(),
     ),
   );
  }
}

class CalendarDemoPage extends StatefulWidget{

  const CalendarDemoPage({Key? key}) : super(key: key);


  @override
  _CalendarDemoPageState createState() => _CalendarDemoPageState();

}
class _CalendarDemoPageState extends State <CalendarDemoPage>{

  late CalendarController _controller;
  DateTime currentDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
   return Center(
     child: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[

           TableCalendar(

             initialCalendarFormat: CalendarFormat.month,

             calendarStyle: CalendarStyle(
                 todayColor: Colors.blue,
                 selectedColor: Theme.of(context).primaryColor,
                 todayStyle: const TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 22.0,
                     color: Colors.white)
             ),

             headerStyle: HeaderStyle(
               centerHeaderTitle: true,
               formatButtonDecoration: BoxDecoration(
                 color: Colors.brown,
                 borderRadius: BorderRadius.circular(22.0),
               ),
               formatButtonTextStyle: const TextStyle(color: Colors.white),
               formatButtonShowsNext: false,
             ),
             startingDayOfWeek: StartingDayOfWeek.monday,
             onDaySelected: (date, events, currentDate) {
               print(date.toUtc());
             },

             builders: CalendarBuilders(
               selectedDayBuilder: (context, date, events) => Container(
                   margin: const EdgeInsets.all(5.0),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       color: Theme.of(context).primaryColor,
                       borderRadius: BorderRadius.circular(50)),
                   child: Text(
                     date.day.toString(),
                     style: TextStyle(color: Colors.white),
                   )),
               todayDayBuilder: (context, date, events) => Container(
                   margin: const EdgeInsets.all(5.0),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(50)),
                   child: Text(
                     date.day.toString(),
                     style: const TextStyle(color: Colors.white),
                   )),
             ),
             calendarController: _controller,
           ),
         ],
       ),
     ),
   );
  }
}