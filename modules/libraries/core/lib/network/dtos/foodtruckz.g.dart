// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodtruckz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Foodtruckz _$FoodtruckzFromJson(Map<String, dynamic> json) => Foodtruckz(
      tours: (json['tours'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ToursItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      operators: (json['operators'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OperatorsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as bool?,
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$FoodtruckzToJson(Foodtruckz instance) =>
    <String, dynamic>{
      'tours': instance.tours?.map((e) => e?.toJson()).toList(),
      'operators': instance.operators?.map((e) => e?.toJson()).toList(),
      'error': instance.error,
      'message': instance.message,
      'code': instance.code,
    };
