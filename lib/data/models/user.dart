import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
   String id;
    String firstName;
   String lastName;
   String email;
   String bio;
   String companyName;
   String website;
   String nameShowed;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.companyName,
      required this.bio,
      required this.website,
      required this.nameShowed});

  User.empty(
      {this.id = '',
      this.firstName = '',
      this.lastName = '',
      this.email = '',
      this.bio = '',
      this.companyName = '',
      this.website = '',
      this.nameShowed = ''});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
