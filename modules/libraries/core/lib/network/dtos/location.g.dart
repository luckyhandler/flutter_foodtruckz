// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String?,
      street: json['street'] as String?,
      number: json['number'] as String?,
      zipcode: json['zipcode'] as String?,
      city: json['city'] as String?,
      countryId: json['countryId'] as String?,
      sponsor: json['sponsor'] as String?,
      map: json['map'] as Map<String, dynamic>?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'street': instance.street,
      'number': instance.number,
      'zipcode': instance.zipcode,
      'city': instance.city,
      'countryId': instance.countryId,
      'sponsor': instance.sponsor,
      'map': instance.map,
      'country': instance.country?.toJson(),
    };
