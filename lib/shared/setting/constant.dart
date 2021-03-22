import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData.light().copyWith(

);

const CONFIG_BASE_URL = 'https://base-url.com';
final Map<DateTime, List> holidays = {
  DateTime(2021, 1, 1): ['New Year\'s Day'],
  DateTime(2021, 1, 6): ['Epiphany'],
  DateTime(2021, 2, 14): ['Valentine\'s Day'],
  DateTime(2021, 4, 21): ['Easter Sunday'],
  DateTime(2021, 4, 22): ['Easter Monday'],
};