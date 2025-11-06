// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Example _$ExampleFromJson(Map<String, dynamic> json) => _Example(
  id: json['id'] as String,
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
);

Map<String, dynamic> _$ExampleToJson(_Example instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
};
