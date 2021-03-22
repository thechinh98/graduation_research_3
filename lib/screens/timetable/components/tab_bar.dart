import 'package:flutter/material.dart';

class TimetableScreenTabBar extends StatelessWidget {
  const TimetableScreenTabBar({
    Key key,
    @required List<Tab> tabList,
    @required TabController tabController,
  }) : _tabList = tabList, _tabController = tabController, super(key: key);

  final List<Tab> _tabList;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20)),
      child: TabBar(
        tabs: _tabList,
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurple,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black12,
      ),
    );
  }
}



