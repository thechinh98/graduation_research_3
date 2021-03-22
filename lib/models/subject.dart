import 'package:flutter/cupertino.dart';

class Subject {
  String subjectId;
  String name;
  String classId;
  String time;
  String room;

  Subject(
      {@required this.name,
      @required this.subjectId,
      @required this.classId,
      @required this.time,
      @required this.room});
}
