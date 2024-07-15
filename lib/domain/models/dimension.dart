import 'package:json_annotation/json_annotation.dart';

part 'dimension.g.dart';

@JsonSerializable()
class Dimension {

  final double width;
  final double height;
  final double depth;

  Dimension({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimension.fromJson(Map<String, dynamic> json) => _$DimensionFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Dimension &&
      other.width == width &&
      other.height == height &&
      other.depth == depth;
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode ^ depth.hashCode;
}
