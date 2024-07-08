// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Post2ModelImpl _$$Post2ModelImplFromJson(Map<String, dynamic> json) =>
    _$Post2ModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$Post2ModelImplToJson(_$Post2ModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
