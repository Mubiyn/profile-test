import 'dart:convert';

class RatingsAndReview {
  final String name;
  final String picture;
  final double rating;
  final String time;
  final String description;
  RatingsAndReview({
    required this.name,
    required this.picture,
    required this.rating,
    required this.time,
    required this.description,
  });

  RatingsAndReview copyWith({
    String? name,
    String? picture,
    double? rating,
    String? time,
    String? description,
  }) {
    return RatingsAndReview(
      name: name ?? this.name,
      picture: picture ?? this.picture,
      rating: rating ?? this.rating,
      time: time ?? this.time,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'picture': picture,
      'rating': rating,
      'time': time,
      'description': description,
    };
  }

  factory RatingsAndReview.fromMap(Map<String, dynamic> map) {
    return RatingsAndReview(
      name: map['name'] as String,
      picture: map['picture'] as String,
      rating: map['rating'] as double,
      time: map['time'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RatingsAndReview.fromJson(String source) =>
      RatingsAndReview.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RatingsAndReview(name: $name, picture: $picture, rating: $rating, time: $time, description: $description)';
  }

  @override
  bool operator ==(covariant RatingsAndReview other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.picture == picture &&
        other.rating == rating &&
        other.time == time &&
        other.description == description;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        picture.hashCode ^
        rating.hashCode ^
        time.hashCode ^
        description.hashCode;
  }
}
