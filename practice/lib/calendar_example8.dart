import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CalendarExample8 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeaderCustomization(),
    );
  }
}

class HeaderCustomization extends StatefulWidget {
  @override
  _HeaderCustomizationState createState() => _HeaderCustomizationState();
}

DateTime now = DateTime.now();

final dropdownDatePicker = DropdownDatePicker(
  firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
  lastDate: ValidDate(year: now.year, month: now.month, day: now.day),
  textStyle: TextStyle(fontWeight: FontWeight.bold),
  dropdownColor: Colors.blue[200],
  dateHint: DateHint(year: 'year', month: 'month', day: 'day'),
  ascending: false,
);

class _HeaderCustomizationState extends State<HeaderCustomization> {
  final DateRangePickerController _controller = DateRangePickerController();
  String headerString = '';

  var _chosenValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double cellWidth = width / 9;

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[

                Container(
                  height: cellWidth,
                  width: cellWidth + 10,
                ),
                Container(
                    width: cellWidth,
                    height: cellWidth,
                    color: Color(0xFFfa697c),
                    child: IconButton(
                      icon: Icon(Icons.arrow_left),
                      color: Colors.white,
                      iconSize: 20,
                      highlightColor: Colors.lightGreen,
                      onPressed: () {
                        setState(() {
                          _controller.backward!();
                        });
                      },
                    )),
                Container(
                  color: Color(0xFFfa697c),
                  height: cellWidth,
                  width: cellWidth * 4.5,
                  child: Expanded(
                    child: ListView(
                      children: [
                        Stack(
                          children: [

                            Positioned.fill(
                              child: DropdownButton<String>(
                                value: _chosenValue,
                                //elevation: 5,
                                style: TextStyle(color: Colors.black),

                                items: <String>[
                                  'Android',
                                  'IOS',
                                  'Flutter',
                                  'Node',
                                  'Java',
                                  'Python',
                                  'PHP',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Please choose a langauage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    _chosenValue = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    width: cellWidth,
                    height: cellWidth,
                    color: Color(0xFFfa697c),
                    child: IconButton(
                      icon: Icon(Icons.arrow_right),
                      color: Colors.white,
                      highlightColor: Colors.lightGreen,
                      onPressed: () {
                        setState(() {
                          _controller.forward!();
                        });
                      },
                    )),
                Container(
                  height: cellWidth,
                  width: cellWidth,
                )
              ],
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 50),
              child:
              SfDateRangePicker(
                  controller: _controller,
                  view: DateRangePickerView.month,
                  headerHeight: 0,
                  onViewChanged: viewChanged,
                  monthViewSettings: DateRangePickerMonthViewSettings(
                      showTrailingAndLeadingDates: true,
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          backgroundColor: Color(0xFFfcc169))),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                      cellDecoration: BoxDecoration(color: Color(0xFF6fb98f)),
                      leadingDatesDecoration:
                      BoxDecoration(color: Color(0xFF6fb98f)),
                      trailingDatesDecoration:
                      BoxDecoration(color: Color(0xFF6fb98f)
                      )
                  )
              ),
            ),
            ElevatedButton(
                onPressed: (){

                },
                child: Text('press here to show date'))
          ],
        )
    );
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {

    final DateTime visibleStartDate = args.visibleDateRange.startDate!;
    final DateTime visibleEndDate = args.visibleDateRange.endDate!;
    final int totalVisibleDays =
    (visibleStartDate.difference(visibleEndDate).inDays);
    final DateTime midDate =

    visibleStartDate.add(Duration(days: totalVisibleDays ~/ 2));
    //headerString = DateFormat('MMMM, yyyy').format(midDate).toString();

    SchedulerBinding.instance!.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}