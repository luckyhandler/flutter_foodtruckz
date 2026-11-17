import 'package:core/core.dart';
import 'package:material_ui/material_ui.dart';

import 'view/foodtruck_details_page.dart';

class FoodtruckDetailsScreen extends StatelessWidget {
  const FoodtruckDetailsScreen({
    super.key,
    required this.foodtruck,
  });

  final Foodtruck foodtruck;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(foodtruck.name)),
      body: FoodtruckDetailsPage(foodtruck: foodtruck),
    );
  }
}
