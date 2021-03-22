import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/research_list/components/research_item_card.dart';
import 'package:flutter_graduation_research_3/temp_data.dart';
class DamnResearchList extends StatelessWidget {
  const DamnResearchList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Học kỳ 20191",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.grey.withOpacity(0.7),
                    size: 30,
                  ),
                  onPressed: () {}),
            ],
          ),
          SizedBox(height: 20),
          ...List.generate(
            listResearchInfo.length,
                (index) => ResearchItemCard(
              title: listResearchInfo[index]["title"],
              instructor: listResearchInfo[index]["instructor"],
              email: listResearchInfo[index]["mail"],
              phone: listResearchInfo[index]["phone"],
            ),
          ),
        ],
      ),
    );
  }
}

