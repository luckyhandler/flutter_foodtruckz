import 'package:core/data/entity/entity.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key, required this.foodtrucks}) : super(key: key);

  final List<Foodtruck> foodtrucks;

  @override
  Widget build(BuildContext context) {
    return foodtrucks.isEmpty
        ? ListTile(
            leading: Image.asset('assets/icons/logo.png', package: 'foodtruck_overview'),
            title: Text(
              'No foodtrucks found for your search.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        : ListView.builder(
            itemCount: foodtrucks.length,
            itemBuilder: (context, index) => ListTile(
              leading: Image.asset('assets/icons/logo.png', package: 'foodtruck_overview'),
              title: Text(
                foodtrucks[index].name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(foodtrucks[index].description),
              isThreeLine: true,
            ),
          );
  }
}
