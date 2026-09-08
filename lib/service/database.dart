import 'package:project1/models/event_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {

final supabase = Supabase.instance.client;



Future<List<EventModel>> getallEvants() async{

final data = await supabase.from("events").select();


List<EventModel> allEvents = [];


for(var element in data) {

EventModel event = EventModel.fromJson(element);
allEvents.add(event);


}
return allEvents;

}



}
