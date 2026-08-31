import 'city_model.dart';

class EventModel {
  String? name;
  String? image;
  String? description;
  String? guide;
  List<CityModel> cities;

  EventModel({
    this.name,
    this.image,
    this.description,
    this.guide,
    this.cities = const [],
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    List<CityModel> citiesList = [];
    for (var item in json["cities"] ?? []) {
      citiesList.add(CityModel.fromJson(item));
    }

    return EventModel(
      name: json["name"] ?? "No name",
      image: json["image"],
      description: json["description"] ?? "",
      guide: json["guide"] ?? "Guide",
      cities: citiesList,
    );
  }
}