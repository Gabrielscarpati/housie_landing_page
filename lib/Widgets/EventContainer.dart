import 'package:flutter/material.dart';
import 'package:housie_landing_page/Modules/Event.dart';

class EventContainer extends StatelessWidget {
  final Servico event;

  const EventContainer({Key? key, required this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [// Color(0xfff1f1f5),
        Stack(
          children: [
            SizedBox(
              height: 210,
              width: 320,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                child: Image.asset(
                  event.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              right: 10,
              top: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.name,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
