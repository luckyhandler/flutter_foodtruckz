import 'package:core/core.dart';
import 'package:foodtruck_overview/presentation/view/empty_view.dart';

import 'grouped_foodtrucks_view.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({
    super.key,
    required this.foodtrucksByDay,
    required this.onItemTap,
  });

  final Map<DateTime, List<Foodtruck>> foodtrucksByDay;
  final Function(Foodtruck) onItemTap;

  @override
  Widget build(BuildContext context) {
    return foodtrucksByDay.isEmpty
        ? const EmptyView()
        : GroupedFoodtrucksView(
            foodtrucksByDay: foodtrucksByDay,
            onItemTap: onItemTap,
          );
  }
}
