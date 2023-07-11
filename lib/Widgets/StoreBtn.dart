import 'package:flutter/material.dart';

import '../Screens/ResponsiveUI.dart';

class StoreBtn extends StatelessWidget {
  final String image;
  final String text;

  const StoreBtn({Key? key, required this.image, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ResponsiveUI.isLessThan480(context) ? 140 : 180,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                image,
                width: ResponsiveUI.isLessThan480(context) ? 25 : 30,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: ResponsiveUI.isLessThan480(context) ? 13 : 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
