import 'dart:convert';

class WorkExperienceModel {
  final String role;
  final String name;
  final String date;
  WorkExperienceModel({
    required this.role,
    required this.name,
    required this.date,
  });

  WorkExperienceModel copyWith({
    String? role,
    String? name,
    String? date,
  }) {
    return WorkExperienceModel(
      role: role ?? this.role,
      name: name ?? this.name,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'name': name,
      'date': date,
    };
  }

  factory WorkExperienceModel.fromMap(Map<String, dynamic> map) {
    return WorkExperienceModel(
      role: map['role'] as String,
      name: map['name'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkExperienceModel.fromJson(String source) =>
      WorkExperienceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WorkExperienceModel(role: $role, name: $name, date: $date)';

  @override
  bool operator ==(covariant WorkExperienceModel other) {
    if (identical(this, other)) return true;

    return other.role == role && other.name == name && other.date == date;
  }

  @override
  int get hashCode => role.hashCode ^ name.hashCode ^ date.hashCode;
}
