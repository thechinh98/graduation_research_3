import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/calendar/components/calendar.dart';

class CalendarScreenTabBar extends StatelessWidget {
  const CalendarScreenTabBar({
    Key key,
    @required TabController tabController,
    @required this.tabTitle,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;
  final List<Tab> tabTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20)),
          child: TabBar(
            controller: _tabController,
            tabs: tabTitle,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.deepPurple,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black12,
          ),
        ),
      ],
    );
  }
}
