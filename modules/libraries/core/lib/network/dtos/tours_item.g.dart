// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tours_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToursItem _$ToursItemFromJson(Map<String, dynamic> json) => ToursItem(
      id: json['id'] as String?,
      operatorid: json['operatorid'] as String?,
      type: json['type'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      timezone: json['timezone'] as String?,
      soldout: json['soldout'] as bool?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ToursItemToJson(ToursItem instance) => <String, dynamic>{
      'id': instance.id,
      'operatorid': instance.operatorid,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'start': instance.start,
      'end': instance.end,
      'timezone': instance.timezone,
      'soldout': instance.soldout,
      'location': instance.location?.toJson(),
    };
