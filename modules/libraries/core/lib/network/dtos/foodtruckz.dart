import 'package:json_annotation/json_annotation.dart';

import 'operators_item.dart';
import 'tours_item.dart';

part 'foodtruckz.g.dart';

@JsonSerializable(explicitToJson: true)
class Foodtruckz {
  Foodtruckz({
    this.tours,
    this.operators,
    this.error,
    this.message,
    this.code,
  });

  factory Foodtruckz.fromJson(Map<String, dynamic> json) =>
      _$FoodtruckzFromJson(json);

  final List<ToursItem?>? tours;
  final List<OperatorsItem?>? operators;
  final bool? error;
  final String? message;
  final String? code;

  Map<String, dynamic> toJson() => _$FoodtruckzToJson(this);
}
