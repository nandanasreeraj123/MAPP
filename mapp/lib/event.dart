import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:horizontal_calendar_widget/date_helper.dart';
import 'package:horizontal_calendar_widget/horizontal_calendar.dart';
import 'package:intl/intl.dart';

const labelMonth = 'Month';
const labelDate = 'Date';
const labelWeekDay = 'Week Day';

class DemoWidget extends StatefulWidget {
  const DemoWidget({
    Key key,
  }) : super(key: key);

  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  DateTime firstDate;
  DateTime lastDate;
  String dateFormat = 'dd';
  String monthFormat = 'MMM';
  String weekDayFormat = 'EEE';
  List<String> order = [labelMonth, labelDate, labelWeekDay];
  bool forceRender = false;

  Color defaultDecorationColor = Colors.transparent;
  BoxShape defaultDecorationShape = BoxShape.rectangle;
  bool isCircularRadiusDefault = true;

  Color selectedDecorationColor = Colors.blueAccent;
  BoxShape selectedDecorationShape = BoxShape.rectangle;
  bool isCircularRadiusSelected = true;

  Color disabledDecorationColor = Colors.grey;
  BoxShape disabledDecorationShape = BoxShape.rectangle;
  bool isCircularRadiusDisabled = true;

  int minSelectedDateCount = 1;
  int maxSelectedDateCount = 1;
  RangeValues selectedDateCount;

  List<DateTime> initialSelectedDates;

  @override
  void initState() {
    super.initState();
    const int days = 30;
    firstDate = toDateMonthYear(DateTime.now());
    lastDate = toDateMonthYear(firstDate.add(Duration(days: days - 1)));
    selectedDateCount = RangeValues(
      minSelectedDateCount.toDouble(),
      maxSelectedDateCount.toDouble(),
    );
    initialSelectedDates = feedInitialSelectedDates(minSelectedDateCount, days);
  }

  List<DateTime> feedInitialSelectedDates(int target, int calendarDays) {
    List<DateTime> selectedDates = List();

    for (int i = 0; i < calendarDays; i++) {
      if (selectedDates.length == target) {
        break;
      }
      DateTime date = firstDate.add(Duration(days: i));
      if (date.weekday != DateTime.sunday) {
        selectedDates.add(date);
      }
    }

    return selectedDates;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'M-ERA',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Workshop',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Conference',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Webinar',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Hackathons',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Calender(forceRender: forceRender, firstDate: firstDate, lastDate: lastDate, dateFormat: dateFormat, weekDayFormat: weekDayFormat, monthFormat: monthFormat, defaultDecorationColor: defaultDecorationColor, defaultDecorationShape: defaultDecorationShape, isCircularRadiusDefault: isCircularRadiusDefault, selectedDecorationColor: selectedDecorationColor, selectedDecorationShape: selectedDecorationShape, isCircularRadiusSelected: isCircularRadiusSelected, disabledDecorationColor: disabledDecorationColor, disabledDecorationShape: disabledDecorationShape, isCircularRadiusDisabled: isCircularRadiusDisabled, order: order, minSelectedDateCount: minSelectedDateCount, maxSelectedDateCount: maxSelectedDateCount, initialSelectedDates: initialSelectedDates),
              Events(name:"EVENT NAME 1", websites:"www.ieee.org", desc:" random text about the event has to be inserted here properly"),
                          Events(name:"EVENT NAME 1", websites:"www.ieee.org", desc:" random text about the event has to be inserted here properly"),
              Events(name:"EVENT NAME 2", websites:"www.ieee1.org", desc:" random text about the event has to be inserted here properly"),
              Events(name:"EVENT NAME 3", websites:"www.ieee2.org", desc:" random text about the event has to be inserted here properly"),
              Events(name:"EVENT NAME 4", websites:"www.ieee3.org", desc:" random text about the event has to be inserted here properly"),
              Events(name:"EVENT NAME 5", websites:"www.ieee4.org", desc:" random text about the event has to be inserted here properly"),
              Events(name:"EVENT NAME 6", websites:"www.ieee5.org", desc:" random text about the event has to be inserted here properly"),

            ],
          ),
        ),
      ),
    );
  }
}

class Calender extends StatelessWidget {
  const Calender({
    Key key,
    @required this.forceRender,
    @required this.firstDate,
    @required this.lastDate,
    @required this.dateFormat,
    @required this.weekDayFormat,
    @required this.monthFormat,
    @required this.defaultDecorationColor,
    @required this.defaultDecorationShape,
    @required this.isCircularRadiusDefault,
    @required this.selectedDecorationColor,
    @required this.selectedDecorationShape,
    @required this.isCircularRadiusSelected,
    @required this.disabledDecorationColor,
    @required this.disabledDecorationShape,
    @required this.isCircularRadiusDisabled,
    @required this.order,
    @required this.minSelectedDateCount,
    @required this.maxSelectedDateCount,
    @required this.initialSelectedDates,
  }) : super(key: key);

  final bool forceRender;
  final DateTime firstDate;
  final DateTime lastDate;
  final String dateFormat;
  final String weekDayFormat;
  final String monthFormat;
  final Color defaultDecorationColor;
  final BoxShape defaultDecorationShape;
  final bool isCircularRadiusDefault;
  final Color selectedDecorationColor;
  final BoxShape selectedDecorationShape;
  final bool isCircularRadiusSelected;
  final Color disabledDecorationColor;
  final BoxShape disabledDecorationShape;
  final bool isCircularRadiusDisabled;
  final List<String> order;
  final int minSelectedDateCount;
  final int maxSelectedDateCount;
  final List<DateTime> initialSelectedDates;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 16),
        HorizontalCalendar(
          key: forceRender ? UniqueKey() : Key('Calendar'),
          height: 120,
          padding: EdgeInsets.all(22),
          firstDate: firstDate,
          lastDate: lastDate,
          dateFormat: dateFormat,
          weekDayFormat: weekDayFormat,
          monthFormat: monthFormat,
          defaultDecoration: BoxDecoration(
            color: defaultDecorationColor,
            shape: defaultDecorationShape,
            borderRadius:
                defaultDecorationShape == BoxShape.rectangle &&
                        isCircularRadiusDefault
                    ? BorderRadius.circular(8)
                    : null,
          ),
          selectedDecoration: BoxDecoration(
            color: selectedDecorationColor,
            shape: selectedDecorationShape,
            borderRadius:
                selectedDecorationShape == BoxShape.rectangle &&
                        isCircularRadiusSelected
                    ? BorderRadius.circular(8)
                    : null,
          ),
          disabledDecoration: BoxDecoration(
            color: disabledDecorationColor,
            shape: disabledDecorationShape,
            borderRadius:
                disabledDecorationShape == BoxShape.rectangle &&
                        isCircularRadiusDisabled
                    ? BorderRadius.circular(8)
                    : null,
          ),
          isDateDisabled: (date) => date.weekday == DateTime.sunday,
          labelOrder: order.map(toLabelType).toList(),
          minSelectedDateCount: minSelectedDateCount,
          maxSelectedDateCount: maxSelectedDateCount,
          initialSelectedDates: initialSelectedDates,
        ),
      ],
    );
  }
}

class Events extends StatelessWidget {
  const Events({
    Key key,
    this.desc,
    this.name,
    this.websites
  }) : super(key: key);
  final String desc,name,websites;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('$name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '$desc',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.blur_circular),
                            Text('$websites'),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

Future<DateTime> datePicker(
  BuildContext context,
  DateTime initialDate,
) async {
  final selectedDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: DateTime.now().subtract(
      Duration(days: 365),
    ),
    lastDate: DateTime.now().add(
      Duration(days: 365),
    ),
  );
  return toDateMonthYear(selectedDate);
}

LabelType toLabelType(String label) {
  LabelType type;
  switch (label) {
    case labelMonth:
      type = LabelType.month;
      break;
    case labelDate:
      type = LabelType.date;
      break;
    case labelWeekDay:
      type = LabelType.weekday;
      break;
  }
  return type;
}
