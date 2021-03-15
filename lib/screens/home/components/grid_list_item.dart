import 'package:flutter/material.dart';

class GridListItem extends StatelessWidget {
  const GridListItem({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
