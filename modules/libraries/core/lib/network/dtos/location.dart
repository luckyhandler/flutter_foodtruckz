import 'package:json_annotation/json_annotation.dart';

import 'country.dart';

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  Location({
    this.name,
    this.street,
    this.number,
    this.zipcode,
    this.city,
    this.countryId,
    this.sponsor,
    this.map,
    this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final String? name;
  final String? street;
  final String? number;
  final String? zipcode;
  final String? city;
  final String? countryId;
  final String? sponsor;
  final Map? map;
  final Country? country;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
