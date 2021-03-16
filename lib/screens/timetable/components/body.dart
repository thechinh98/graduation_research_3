import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/models/subject.dart';
import 'package:flutter_graduation_research_3/screens/timetable/components/date_timetable.dart';
import 'package:flutter_graduation_research_3/screens/timetable/components/tab_bar.dart';
import 'package:flutter_graduation_research_3/screens/timetable/components/timetable.dart';
import 'package:flutter_graduation_research_3/temp_data.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Tab> _tabList = [
    Tab(
      text: "Day",
    ),
    Tab(
      text: "Week",
    )
  ];
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: _tabList.length, vsync: this);
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimetableScreenTabBar(
              tabList: _tabList, tabController: _tabController),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 3,
            indent: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Timetable(),
              Timetable(),
            ]),
          )
        ],
      ),
    );
  }
}
