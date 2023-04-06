part of 'overview_bloc.dart';

class OverviewState extends Equatable {
  const OverviewState();

  @override
  List<Object> get props => [];
}

class OverviewInitial extends OverviewState {}

class OnOverviewLoading extends OverviewState {}

class OnOverviewError extends OverviewState {}

class OnOverviewSuccess extends OverviewState {
  const OnOverviewSuccess({required this.foodtrucks});

  final List<Foodtruck> foodtrucks;

  @override
  List<Object> get props => [foodtrucks];
}
