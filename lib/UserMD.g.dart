// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserMD.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMd _$UserMdFromJson(Map<String, dynamic> json) => UserMd(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UserMdToJson(UserMd instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'status': instance.status,
    };
