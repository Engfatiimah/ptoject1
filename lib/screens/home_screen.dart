import 'package:flutter/material.dart';

import '../data/events.dart';
import '../widgets/event_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Where's the Event?")),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 4),
            child: Text(
              "Welcome to Saudi 🇸🇦",
              textAlign: TextAlign.center,

              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Pick an activity and discover where to go.",
              textAlign: TextAlign.center,

              style: TextStyle(color: Colors.grey),
            ),
          ),
          ...events.map((event) => EventCard(event: event)),
        ],
      ),
    );
  }
}
