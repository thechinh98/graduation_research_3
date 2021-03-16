import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    Key key,
    @required this.id,
    @required this.name,
    @required this.classId,
    @required this.time,
    @required this.room,
  }) : super(key: key);
  final String id;
  final String name;
  final String classId;
  final String time;
  final String room;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 30),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "$classId - $name - $id\n$time, $room",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
