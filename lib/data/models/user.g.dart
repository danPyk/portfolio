// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      companyName: json['company_name'] as String,
      bio: json['bio'] as String,
      website: json['website'] as String,
      nameShowed: json['name_showed'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'bio': instance.bio,
      'company_name': instance.companyName,
      'website': instance.website,
      'name_showed': instance.nameShowed,
    };
