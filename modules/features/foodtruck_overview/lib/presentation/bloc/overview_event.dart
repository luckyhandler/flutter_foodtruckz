part of 'overview_bloc.dart';

abstract class OverviewEvent extends Equatable {
  const OverviewEvent();

  @override
  List<Object?> get props => [];
}

class GetFoodtruckz extends OverviewEvent {
  const GetFoodtruckz({
    required this.longitude,
    required this.latitude,
    required this.startDate,
    required this.endDate,
  });

  final double? longitude;
  final double? latitude;
  final DateTime startDate;
  final DateTime endDate;

  @override
  List<Object?> get props => [
        longitude,
        latitude,
        startDate,
        endDate,
      ];
}
