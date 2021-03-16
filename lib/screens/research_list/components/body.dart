import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/research_list/components/damn_research_list.dart';
import 'package:flutter_graduation_research_3/screens/research_list/components/research_item_card.dart';
import 'package:flutter_graduation_research_3/screens/research_list/components/tab_bar.dart';
import 'package:flutter_graduation_research_3/shared/setting/constant.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  List<Tab> researchTabList = [
    Tab(
      text: "ĐAMN ",
    ),
    Tab(
      text: "ĐATN",
    ),
    Tab(
      text: "ThS",
    ),
    Tab(
      text: "TS",
    ),
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: researchTabList.length, vsync: this);
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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          ResearchScreenTabBar(researchTabList: researchTabList, tabController: _tabController),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              DamnResearchList(),
              DamnResearchList(),
              DamnResearchList(),
              DamnResearchList(),
            ]),
          )
        ],
      ),
    );
  }
}

