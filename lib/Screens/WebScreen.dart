import 'package:flutter/material.dart';

import '../Widgets/AppScreensList.dart';
import '../Widgets/FeedScreen.dart';
import '../Widgets/TopEvents.dart';
import '../design_system/color.dart';
import 'ResponsiveUI.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          margin: EdgeInsets.symmetric(
            horizontal: ResponsiveUI.isLessThan1250(context) ? 20 : 100,
          ),
          decoration: BoxDecoration(
            color: DSColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeedScreen(),
              Container(
                width: ResponsiveUI.isLessThan1250(context) ? 350 : 400,
                height: ResponsiveUI.isLessThan1250(context) ? 500 : 550,
                child: AppScreensList(),
              ),
            ],
          ),
        ),
        TopEvents(),
      ],
    );
  }
}
