import 'package:flutter/material.dart';
import 'package:housie_landing_page/Modules/Event.dart';
import '../Modules/Data.dart';
import '../Screens/ResponsiveUI.dart';
import 'EventContainer.dart';

class TopEvents extends StatelessWidget {
  const TopEvents({super.key});

  List<Widget> eventsWidgets() {
    List<Widget> events = [];
    for (Servico event in topEvents) {
      events.add(
        EventContainer(
          event: event,
        ),
      );
    }
    return events;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveUI.isLessThan1250(context) ? 40 : 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            'Serviços disponíveis',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 40),
          MediaQuery.of(context).size.width < 600?
          Wrap(
            runSpacing: 50,
            spacing: MediaQuery.of(context).size.width * 0.1,
            children: eventsWidgets(),
          )
          : SizedBox(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 3, // Number of columns
              childAspectRatio: 1.0, // Width to height ratio of each item
              children:
                eventsWidgets(),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
