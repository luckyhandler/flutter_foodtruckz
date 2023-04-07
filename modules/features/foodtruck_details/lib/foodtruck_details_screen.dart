import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'view/foodtruck_details_page.dart';

class FoodtruckDetailsScreen extends StatelessWidget {
  const FoodtruckDetailsScreen({
    Key? key,
    required this.foodtruck,
  }) : super(key: key);

  final Foodtruck foodtruck;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(foodtruck.name)),
      body: FoodtruckDetailsPage(foodtruck: foodtruck),
    );
  }
}
