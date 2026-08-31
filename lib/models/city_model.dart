class CityModel {
  String? name;
  String? city;
  String? image;
  String? description;

  CityModel({this.name, this.city, this.image, this.description});

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json["name"] ?? "No name",
      city: json["city"] ?? "",
      image: json["image"],
      description: json["description"] ?? "",
    );
  }
}