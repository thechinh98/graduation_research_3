import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Học kỳ 20191",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.grey.withOpacity(0.7),
                    size: 30,
                  ),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
