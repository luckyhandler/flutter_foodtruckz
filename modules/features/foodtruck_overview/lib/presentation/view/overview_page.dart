import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';
import 'overview_view.dart';

class OverviewPage extends StatelessWidget {
  OverviewPage({
    Key? key,
    required this.onItemTap,
  }) : super(key: key);

  final FoodtruckzRepository repository = FoodtruckzRepositoryImpl();
  final Function(Foodtruck) onItemTap;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => OverviewBloc(repository: repository),
        child: FutureBuilder<LocationData>(
          future: Location().getLocation(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const SizedBox.shrink();
              case ConnectionState.waiting:
              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                final location = snapshot.data;
                final now = DateTime.now();
                context.read<OverviewBloc>().add(GetFoodtruckz(
                      longitude: location?.longitude,
                      latitude: location?.latitude,
                      startDate: DateTime(
                        now.year,
                        now.month,
                        now.day,
                        0,
                        0,
                        0,
                      ),
                      endDate: DateTime(
                        now.year,
                        now.month,
                        now.day + 7,
                        23,
                        59,
                        59,
                      ),
                    ));
                return OverviewView(location: location, onItemTap: onItemTap);
            }
          },
        ),
      );
}
