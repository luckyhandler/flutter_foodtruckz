import 'package:core/data/entity/entity.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key, required this.foodtrucks}) : super(key: key);

  final List<Foodtruck> foodtrucks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodtrucks.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset('assets/icons/logo.png'),
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
