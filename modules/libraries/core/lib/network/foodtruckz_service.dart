import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as rf;

import 'dtos/foodtruckz.dart';

part 'foodtruckz_service.g.dart';

@rf.RestApi(baseUrl: 'https://www.craftplaces-business.com/api/')
abstract class FoodtruckzService {
  factory FoodtruckzService(Dio dio, {String baseUrl}) = _FoodtruckzService;

  @rf.GET('locations/getTours.json')
  Future<Foodtruckz> getFoodtruckz({
    @rf.Header("Authorization") required String auth,
    @rf.Query("longitude") required double longitude,
    @rf.Query("latitude") required double latitude,
    @rf.Query("rd") String rd = "10",
    @rf.Query("version") String version = "2",
  });
}
