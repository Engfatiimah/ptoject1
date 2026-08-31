import 'package:flutter/material.dart';
import '../data/events.dart';
import '../models/event_model.dart';
import '../widgets/event_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<EventModel> eventList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    for (var item in events) {
      eventList.add(EventModel.fromJson(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Where's the Event?"),
      ),
      body: ListView.builder(
        itemCount: eventList.length,
        itemBuilder: (context, index) {
          return EventCard(event: eventList[index]);
        },
      ),
    );
  }
}