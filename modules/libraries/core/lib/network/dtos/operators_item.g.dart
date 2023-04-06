// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operators_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorsItem _$OperatorsItemFromJson(Map<String, dynamic> json) =>
    OperatorsItem(
      id: json['id'] as String?,
      name: json['name'] as String?,
      nameShort: json['nameShort'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      offer: json['offer'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      region: json['region'] as String?,
      logo: json['logo'] as String?,
      impressions: (json['impressions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      colors: json['colors'] == null
          ? null
          : Colors.fromJson(json['colors'] as Map<String, dynamic>),
      premium: json['premium'] as bool?,
      name_url: json['name_url'] as String?,
    );

Map<String, dynamic> _$OperatorsItemToJson(OperatorsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameShort': instance.nameShort,
      'description': instance.description,
      'url': instance.url,
      'offer': instance.offer,
      'tags': instance.tags,
      'region': instance.region,
      'logo': instance.logo,
      'impressions': instance.impressions,
      'colors': instance.colors,
      'premium': instance.premium,
      'name_url': instance.name_url,
    };
