// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapInfo _$MapInfoFromJson(Map<String, dynamic> json) => MapInfo(
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      icon: json['icon'] as String?,
      colors: json['colors'] == null
          ? null
          : Colors.fromJson(json['colors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MapInfoToJson(MapInfo instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'icon': instance.icon,
      'colors': instance.colors?.toJson(),
    };
