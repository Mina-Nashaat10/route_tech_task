import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

@JsonSerializable()
class Review {
  
  final int rating;

  final String comment;
  final String date;

  final String reviewerName;
  final String reviewerEmail;

  Review({
    required this.rating,

    required this.comment,
    required this.date,

    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Review &&
      other.rating == rating &&
      other.comment == comment &&
      other.date == date &&
      other.reviewerName == reviewerName &&
      other.reviewerEmail == reviewerEmail;
  }

  @override
  int get hashCode {
    return rating.hashCode ^
      comment.hashCode ^
      date.hashCode ^
      reviewerName.hashCode ^
      reviewerEmail.hashCode;
  }
}
