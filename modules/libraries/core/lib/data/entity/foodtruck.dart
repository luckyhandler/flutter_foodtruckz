import 'foodtruck_location.dart';

class Foodtruck {
  Foodtruck({
    required this.name,
    required this.description,
    required this.location,
    required this.timeStart,
    required this.timeEnd,
    required this.url,
    this.logo,
  });

  final String name;
  final String description;
  final FoodtruckLocation location;
  final DateTime timeStart;
  final DateTime timeEnd;
  final String? url;
  final String? logo;
}
