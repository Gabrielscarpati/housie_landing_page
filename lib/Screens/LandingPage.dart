import 'package:flutter/material.dart';
import 'MobileScreen.dart';
import 'ResponsiveUI.dart';
import 'WebScreen.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveUI(
        mobile: MobileScreen(),
        web: WebScreen(),
      ),
    );
  }
}
