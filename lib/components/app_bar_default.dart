import 'package:flutter/material.dart';

AppBar AppBarDefault(String title) {
  return AppBar(
    backgroundColor: Colors.red,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    title: Text(title),
    actions: [
      IconButton(
        icon: Icon(Icons.person, color: Colors.white),
        onPressed: () {},
      ),
    ],
  );
}