import 'package:core/core.dart';

part 'overview_event.dart';

part 'overview_state.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  OverviewBloc({required this.repository}) : super(OverviewInitial()) {
    on<GetFoodtruckz>(_getFoodtruckz);
  }

  final FoodtruckzRepository repository;

  _getFoodtruckz(
    GetFoodtruckz event,
    Emitter<OverviewState> emit,
  ) async {
    emit(OnOverviewLoading());

    final latitude = event.latitude;
    final longitude = event.longitude;

    if (latitude == null || longitude == null) {
      emit(OnOverviewError());
    }

    try {
      final foodtrucks = await repository.getFoodtruckz(
        longitude: longitude,
        latitude: latitude,
        startDate: event.startDate,
        endDate: event.endDate,
      );
      emit(OnOverviewSuccess(foodtrucks: foodtrucks));
    } on Exception catch (e, s) {
      Fimber.e('error while retrieving foodtruckz.', ex: e, stacktrace: s);
      emit(OnOverviewError());
    }
  }
}
