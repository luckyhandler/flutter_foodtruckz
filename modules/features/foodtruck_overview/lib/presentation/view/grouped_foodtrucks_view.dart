import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GroupedFoodtrucksView extends StatelessWidget {
  const GroupedFoodtrucksView({
    Key? key,
    required this.foodtrucksByDay,
  }) : super(key: key);

  final Map<DateTime, List<Foodtruck>> foodtrucksByDay;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: foodtrucksByDay.keys.length,
        itemBuilder: (context, index) {
          final date = foodtrucksByDay.keys.elementAt(index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  DateFormat.MMMEd().format(date),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Builder(builder: (context) {
                final foodtrucks = foodtrucksByDay[date] ?? [];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    foodtrucks.length,
                    (index) => Card(
                      margin: const EdgeInsets.all(16),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: foodtrucks[index].logo == null
                              ? Image.asset(
                                  'assets/icons/logo.png',
                                  package: 'foodtruck_overview',
                                )
                              : Image.network(foodtrucks[index].logo!),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(DateFormat.Hm()
                                      .format(foodtrucks[index].timeStart)),
                                  const Text(' - '),
                                  Text(DateFormat.Hm()
                                      .format(foodtrucks[index].timeEnd)),
                                ],
                              ),
                              Text(foodtrucks[index].name),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (foodtrucks[index].location.name != null)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                      '${foodtrucks[index].location.name!}, ${foodtrucks[index].location.street ?? ''} ${foodtrucks[index].location.number ?? ''}'),
                                ),
                              Text(foodtrucks[index].description),
                            ],
                          ),
                          isThreeLine: true,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          );
        },
      );
}
