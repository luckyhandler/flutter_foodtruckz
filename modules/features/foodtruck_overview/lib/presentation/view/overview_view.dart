import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../presentation.dart';
import 'error_view.dart';
import 'success_view.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({
    required this.location,
    Key? key,
  }) : super(key: key);

  final LocationData? location;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewBloc, OverviewState>(
      builder: (context, state) {
        final loading = state is OnOverviewLoading;
        final error = state is OnOverviewError;

        if (loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (error) {
          return const ErrorView();
        } else {
          final foodtrucks =
              state is OnOverviewSuccess ? state.foodtrucks : <Foodtruck>[];
          return SuccessView(foodtrucks: foodtrucks);
        }
      },
    );
  }
}
