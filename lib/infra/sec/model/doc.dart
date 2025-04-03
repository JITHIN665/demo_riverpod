import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc.freezed.dart';
part 'doc.g.dart';

@freezed
class ArtDetailsModel with _$ArtDetailsModel {
  const factory ArtDetailsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'security') int? security,
    @JsonKey(name: 'document_path') String? documentPath,
    @JsonKey(name: 'document_name') String? documentName,
    @JsonKey(name: 'document_extension') String? documentExtension,
  }) = _ArtDetailsModel;

  factory ArtDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ArtDetailsModelFromJson(json);
}
