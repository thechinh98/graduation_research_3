import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/timetable/components/date_timetable.dart';
import 'package:flutter_graduation_research_3/temp_data.dart';

class Timetable extends StatelessWidget {
  const Timetable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: [
        ...List.generate(
          listSubject.length,
          (index) => DateTimetable(
            date: listSubject[index]["date"],
            listSubject: listSubject[index]["subject"],
          ),
        ),
      ]),
    );
  }
}
