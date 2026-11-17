import 'package:core/core.dart';

class FoodtruckDetailsView extends StatelessWidget {
  const FoodtruckDetailsView({
    super.key,
    required this.foodtruck,
  });

  final Foodtruck foodtruck;

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          foodtruck.logo == null
              ? Image.asset(
                  'assets/icons/logo.png',
                  package: 'foodtruck_overview',
                )
              : Image.network(foodtruck.logo!),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(foodtruck.description),
          ),
          const SizedBox(height: 16),
        ],
      );
}
