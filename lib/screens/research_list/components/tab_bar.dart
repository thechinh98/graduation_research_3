import 'package:flutter/material.dart';

class ResearchScreenTabBar extends StatelessWidget {
  const ResearchScreenTabBar({
    Key key,
    @required this.researchTabList,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final List<Tab> researchTabList;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20)),
      child: TabBar(
        tabs: researchTabList,
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
