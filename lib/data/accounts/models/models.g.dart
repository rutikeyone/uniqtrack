// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
      gender: const GenderConverter()
          .fromJson(json['gender'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'gender': const GenderConverter().toJson(instance.gender),
    };
