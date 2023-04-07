import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'foodtruck_details_view.dart';

class FoodtruckDetailsPage extends StatelessWidget {
  const FoodtruckDetailsPage({
    Key? key,
    required this.foodtruck,
  }) : super(key: key);

  final Foodtruck foodtruck;

  @override
  Widget build(BuildContext context) => FoodtruckDetailsView(foodtruck: foodtruck);
}
