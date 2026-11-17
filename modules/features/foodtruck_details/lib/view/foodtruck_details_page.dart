import 'package:core/core.dart';

import 'foodtruck_details_view.dart';

class FoodtruckDetailsPage extends StatelessWidget {
  const FoodtruckDetailsPage({
    super.key,
    required this.foodtruck,
  });

  final Foodtruck foodtruck;

  @override
  Widget build(BuildContext context) => FoodtruckDetailsView(foodtruck: foodtruck);
}
