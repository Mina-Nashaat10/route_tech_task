import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  
  final String createdAt;
  final String updatedAt;

  final String barcode;
  final String qrCode;

  Meta({
    required this.createdAt,
    required this.updatedAt,

    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Meta &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.barcode == barcode &&
      other.qrCode == qrCode;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
      updatedAt.hashCode ^
      barcode.hashCode ^
      qrCode.hashCode;
  }
}
