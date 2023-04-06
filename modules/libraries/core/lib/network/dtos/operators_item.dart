import 'package:json_annotation/json_annotation.dart';

import 'colors.dart';

part 'operators_item.g.dart';

@JsonSerializable()
class OperatorsItem {
  OperatorsItem({
    this.id,
    this.name,
    this.nameShort,
    this.description,
    this.url,
    this.offer,
    this.tags,
    this.region,
    this.logo,
    this.impressions,
    this.colors,
    this.premium,
    this.name_url,
  });

  factory OperatorsItem.fromJson(Map<String, dynamic> json) =>
      _$OperatorsItemFromJson(json);

  final String? id;
  final String? name;
  final String? nameShort;
  final String? description;
  final String? url;
  final String? offer;
  final List<String>? tags;
  final String? region;
  final String? logo;
  final List<String>? impressions;
  final Colors? colors;
  final bool? premium;
  final String? name_url;

  Map<String, dynamic> toJson() => _$OperatorsItemToJson(this);
}
