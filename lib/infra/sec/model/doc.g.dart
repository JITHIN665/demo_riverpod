// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtDetailsModelImpl _$$ArtDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtDetailsModelImpl(
      id: json['id'] as int?,
      security: json['security'] as int?,
      documentPath: json['document_path'] as String?,
      documentName: json['document_name'] as String?,
      documentExtension: json['document_extension'] as String?,
    );

Map<String, dynamic> _$$ArtDetailsModelImplToJson(
        _$ArtDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'security': instance.security,
      'document_path': instance.documentPath,
      'document_name': instance.documentName,
      'document_extension': instance.documentExtension,
    };
