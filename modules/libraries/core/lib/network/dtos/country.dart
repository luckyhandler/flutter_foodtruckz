import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  Country({
    this.id,
    this.iso,
    this.addressType,
    this.dateFormat,
    this.timeFormat,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  final String? id;
  final String? iso;
  final String? addressType;
  final String? dateFormat;
  final String? timeFormat;

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
