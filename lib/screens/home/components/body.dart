import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/screens/home/components/grid_list_item.dart';
import 'package:flutter_graduation_research_3/temp_data.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 70),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(
                listTitle.length,
                (index) => GridListItem(
                  title: listTitle[index]["title"],
                  color: listTitle[index]["color"],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

