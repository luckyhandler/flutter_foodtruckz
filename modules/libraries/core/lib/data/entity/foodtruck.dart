class Foodtruck {
  Foodtruck({
    required this.name,
    required this.description,
    required this.location,
    required this.time,
    required this.url,
    this.logo,
  });

  final String name;
  final String description;
  final String location;
  final DateTime time;
  final String? url;
  final String? logo;
}
