import 'package:flutter/material.dart';

import '../Widgets/AppScreensList.dart';
import '../Widgets/FeedScreen.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/TopEvents.dart';
import '../design_system/color.dart';
import 'ResponsiveUI.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NavBar(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(
            ResponsiveUI.isLessThan480(context) ? 25 : 40,
          ),
          decoration: BoxDecoration(
            color: DSColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              FeedScreen(),
              SizedBox(height: 30),
              Container(
                width: 500,
                child: AppScreensList(),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        TopEvents(),
      ],
    );
  }
}
