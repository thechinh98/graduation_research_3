import 'package:flutter/material.dart';
import 'package:flutter_graduation_research_3/components/app_bar_default.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault("One Love One Future"),
      body: Body(),
    );
  }


}
