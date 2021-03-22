import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/components/app_bar_default.dart';

import 'components/body.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault("Thời khóa biểu"),
      body: Body(),
    );
  }
}

