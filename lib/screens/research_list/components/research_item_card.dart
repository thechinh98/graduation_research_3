import 'package:flutter/material.dart';

class ResearchItemCard extends StatelessWidget {
  const ResearchItemCard({
    Key key,
    this.title,
    this.instructor,
    this.email,
    this.phone,
  }) : super(key: key);
  final String title;
  final String instructor;
  final String email;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            instructor,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
          ),
          Text(
            phone,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
