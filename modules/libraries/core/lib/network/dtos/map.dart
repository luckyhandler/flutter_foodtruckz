import 'package:json_annotation/json_annotation.dart';

import 'colors.dart';

part 'map.g.dart';

@JsonSerializable(explicitToJson: true)
class MapInfo {
  MapInfo({
    this.longitude,
    this.latitude,
    this.icon,
    this.colors,
  });

  factory MapInfo.fromJson(Map<String, dynamic> json) => _$MapInfoFromJson(json);

  final String? longitude;
  final String? latitude;
  final String? icon;
  final Colors? colors;

  Map<String, dynamic> toJson() => _$MapInfoToJson(this);
}
