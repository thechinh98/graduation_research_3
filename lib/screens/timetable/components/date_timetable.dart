import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/models/subject.dart';
import 'package:flutter_graduation_research_3/screens/timetable/components/subject_card.dart';

class DateTimetable extends StatelessWidget {
  const DateTimetable({
    Key key,
    @required this.date,
    this.listSubject,
  }) : super(key: key);
  final String date;
  final List<Subject> listSubject;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: [
                ...List.generate(
                    listSubject.length,
                        (index) => SubjectCard(
                        id: listSubject[index].subjectId,
                        name: listSubject[index].name,
                        classId: listSubject[index].classId,
                        time: listSubject[index].time,
                        room: listSubject[index].room))
              ],
            ),
          )
        ],
      ),
    );
  }
}

