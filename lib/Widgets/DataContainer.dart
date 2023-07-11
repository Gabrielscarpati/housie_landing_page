import 'package:flutter/material.dart';

import '../Screens/ResponsiveUI.dart';
import '../design_system/color.dart';

class DataContainer extends StatelessWidget {
  final String number;
  final String type;

  const DataContainer({Key? key, required this.number, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveUI.isLessThan1250(context) ? 60 : 80,
      width: ResponsiveUI.isLessThan900(context)
          ? 120
          : ResponsiveUI.isLessThan1250(context)
              ? 140
              : 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(
              color: DSColors.primary,
              fontSize: ResponsiveUI.isLessThan900(context) ? 25 : 30,
            ),
          ),
          Text(
            type,
            style: TextStyle(
              color: DSColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
