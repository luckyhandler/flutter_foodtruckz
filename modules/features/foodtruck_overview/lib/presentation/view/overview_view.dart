import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';
import 'error_view.dart';
import 'success_view.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({
    Key? key,
    required this.location,
    required this.onItemTap,
  }) : super(key: key);

  final LocationData? location;
  final Function(Foodtruck) onItemTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewBloc, OverviewState>(
      builder: (context, state) {
        final initial = state is OverviewInitial;
        final loading = state is OnOverviewLoading;
        final error = state is OnOverviewError;

        if (loading || initial) {
          return const Center(child: CircularProgressIndicator());
        } else if (error) {
          return const ErrorView();
        } else {
          final foodtrucks =
              state is OnOverviewSuccess ? state.foodtrucksByDay : null;
          return SuccessView(
            foodtrucksByDay: foodtrucks ?? Map.identity(),
            onItemTap: onItemTap,
          );
        }
      },
    );
  }
}
