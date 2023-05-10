import 'dart:convert';

class JobPortfolio {
  final String image;
  final String name;
  JobPortfolio({
    required this.image,
    required this.name,
  });

  JobPortfolio copyWith({
    String? image,
    String? name,
  }) {
    return JobPortfolio(
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
    };
  }

  factory JobPortfolio.fromMap(Map<String, dynamic> map) {
    return JobPortfolio(
      image: map['image'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory JobPortfolio.fromJson(String source) =>
      JobPortfolio.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'JobPortfolio(image: $image, name: $name)';

  @override
  bool operator ==(covariant JobPortfolio other) {
    if (identical(this, other)) return true;

    return other.image == image && other.name == name;
  }

  @override
  int get hashCode => image.hashCode ^ name.hashCode;
}
