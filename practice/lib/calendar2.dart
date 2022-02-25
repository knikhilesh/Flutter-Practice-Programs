
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class CalendarDemo3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calendar Demo 3'),
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
  late String _dateCount;
  late String _range;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _dateCount = '';
    _range = '';
    //super.initState();
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
              todayColor: Colors.orange,
              selectedColor: Theme.of(context).primaryColor,
            ),
                headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  titleTextBuilder: (date, locale) => DateFormat.yMMMM(locale).format(date).toUpperCase(),
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarController: _controller,
            ),

            SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
            ),
          ],
        ),
      ),
    );
  }
}