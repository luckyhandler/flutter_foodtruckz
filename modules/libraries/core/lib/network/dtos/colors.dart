import 'package:json_annotation/json_annotation.dart';

part 'colors.g.dart';

@JsonSerializable()
class Colors {
  Colors({this.truck, this.text});

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);

  final String? truck;
  final String? text;

  Map<String, dynamic> toJson() => _$ColorsToJson(this);
}
