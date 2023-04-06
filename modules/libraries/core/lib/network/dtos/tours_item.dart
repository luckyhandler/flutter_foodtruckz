import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'tours_item.g.dart';

@JsonSerializable(explicitToJson: true)
class ToursItem {
  ToursItem({
    required this.id,
    required this.operatorid,
    required this.type,
    required this.name,
    required this.description,
    required this.start,
    required this.end,
    required this.timezone,
    required this.soldout,
    required this.location,
  });

  factory ToursItem.fromJson(Map<String, dynamic> json) =>
      _$ToursItemFromJson(json);

  final String? id;
  final String? operatorid;
  final int? type;
  final String? name;
  final String? description;
  final String? start;
  final String? end;
  final String? timezone;
  final bool? soldout;
  final Location? location;

  Map<String, dynamic> toJson() => _$ToursItemToJson(this);
}
