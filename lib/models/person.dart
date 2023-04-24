import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

enum LoadStatus { loading, loaded, error }

@JsonSerializable(explicitToJson: true)
class Person {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final String image;
  final String email;

  Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.image,
    required this.email,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
