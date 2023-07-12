import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Screens/ResponsiveUI.dart';

class StoreBtn extends StatelessWidget {
  final String image;
  final String text;

  const StoreBtn({Key? key, required this.image, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<void> _launchURL(String url) async {
      final Uri uri = Uri(scheme: "https", host: url);
      if(!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      )) {
        throw "Can not launch url";
      }
    }
    return GestureDetector(
      onTap: () async {
        String url = 'www.thehousie.com';
        _launchURL(url);
      },
       /* {
        const url = 'https://thehousie.com/#/';
        if(await canLaunchUrl(Uri.parse(url))){
        await canLaunchUrl(Uri.parse(url));
        }
        },*/
      child: Container(
        width: ResponsiveUI.isLessThan480(context) ? 280 : 360,
        height: 80,
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
