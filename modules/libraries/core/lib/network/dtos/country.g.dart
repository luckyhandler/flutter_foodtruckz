// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as String?,
      iso: json['iso'] as String?,
      addressType: json['addressType'] as String?,
      dateFormat: json['dateFormat'] as String?,
      timeFormat: json['timeFormat'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'iso': instance.iso,
      'addressType': instance.addressType,
      'dateFormat': instance.dateFormat,
      'timeFormat': instance.timeFormat,
    };
