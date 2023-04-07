import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:core/network/dtos/foodtruckz.dart';
import 'package:core/network/dtos/tours_item.dart';
import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';

import '../network/network.dart';
import 'entity/entity.dart';
import 'keys.dart';

abstract class FoodtruckzRepository {
  Future<List<Foodtruck>> getFoodtruckz({
    required longitude,
    required latitude,
    required DateTime startDate,
    required DateTime endDate,
  });
}

class FoodtruckzRepositoryImpl extends FoodtruckzRepository {
  FoodtruckzRepositoryImpl();

  final FoodtruckzService service = FoodtruckzService(
    Dio()
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) => requestInterceptor(options, handler),
          onResponse: (response, handler) =>
              responseInterceptor(response, handler),
          onError: (dioError, handler) => errorInterceptor(dioError, handler),
        ),
      ),
  );

  @override
  Future<List<Foodtruck>> getFoodtruckz({
    required longitude,
    required latitude,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    const credentials = "token:$token";
    final stringToBase64Url = utf8.fuse(base64Url);
    final encodedCredentials = stringToBase64Url.encode(credentials);       // username:password

    final foodtruckz = await service.getFoodtruckz(
      auth: 'Basic $encodedCredentials',
      latitude: latitude,
      longitude: longitude,
    );

    return foodtruckz
        .toFoodtruckEntities()
        .whereType<Foodtruck>()
        .where((foodtruck) =>
            foodtruck.timeStart.isAfter(startDate) &&
            foodtruck.timeStart.isBefore(endDate))
        .toList();
  }
}

errorInterceptor(DioError dioError, ErrorInterceptorHandler handler) {
  Fimber.e('Dio: ${dioError.message}');
  handler.reject(dioError);
}

responseInterceptor(
    Response<dynamic> response, ResponseInterceptorHandler handler) {
  Fimber.d('Dio: ${response.toString()}');
  handler.resolve(response);
}

requestInterceptor(RequestOptions options, RequestInterceptorHandler handler) {
  Fimber.d('Dio: ${options.toString()}');
  handler.next(options);
}

extension FoodtruckzExtensions on Foodtruckz {
  Iterable<Foodtruck?> toFoodtruckEntities() {
    final tours = this
            .tours
            ?.whereType<ToursItem>()
            .where((element) => element.start?.isNotEmpty == true) ??
        [];
    final operators = this.operators;

    return tours.mapIndexed((index, toursItem) {
      try {
        return Foodtruck(
          name: operators?[index]?.name ?? '',
          description: operators?[index]?.description ?? '',
          location: FoodtruckLocation(
            name: toursItem.location?.name,
            city: toursItem.location?.city,
            number: toursItem.location?.number,
            street: toursItem.location?.street,
            zipcode: toursItem.location?.zipcode,
          ),
          timeStart: DateTime.parse(
              toursItem.start!.substring(0, toursItem.start!.indexOf('+'))),
          timeEnd: DateTime.parse(
              toursItem.end!.substring(0, toursItem.end!.indexOf('+'))),
          url: operators?[index]?.name_url ?? '',
          logo: operators?[index]?.logo,
        );
      } on Exception catch (e) {
        Fimber.e('error while parsing foodtruckz item', ex: e);
        return null;
      }
    });
  }
}
