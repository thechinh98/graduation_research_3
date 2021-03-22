import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/calendar/components/calendar.dart';
import 'package:flutter_graduation_research_3/screens/calendar/components/tab_bar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  List<Tab> tabTitle = [
    Tab(text: "Day"),
    Tab(text: "Week"),
    Tab(text: "Month"),
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: tabTitle.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            CalendarScreenTabBar(
                tabController: _tabController, tabTitle: tabTitle),
            CustomCalendar(),
          ],
        ),
      ),
    );
  }
}
