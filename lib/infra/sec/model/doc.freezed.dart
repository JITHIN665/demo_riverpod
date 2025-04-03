// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtDetailsModel _$ArtDetailsModelFromJson(Map<String, dynamic> json) {
  return _ArtDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ArtDetailsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'security')
  int? get security => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_path')
  String? get documentPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_name')
  String? get documentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_extension')
  String? get documentExtension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtDetailsModelCopyWith<ArtDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtDetailsModelCopyWith<$Res> {
  factory $ArtDetailsModelCopyWith(
          ArtDetailsModel value, $Res Function(ArtDetailsModel) then) =
      _$ArtDetailsModelCopyWithImpl<$Res, ArtDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'security') int? security,
      @JsonKey(name: 'document_path') String? documentPath,
      @JsonKey(name: 'document_name') String? documentName,
      @JsonKey(name: 'document_extension') String? documentExtension});
}

/// @nodoc
class _$ArtDetailsModelCopyWithImpl<$Res, $Val extends ArtDetailsModel>
    implements $ArtDetailsModelCopyWith<$Res> {
  _$ArtDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? security = freezed,
    Object? documentPath = freezed,
    Object? documentName = freezed,
    Object? documentExtension = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as int?,
      documentPath: freezed == documentPath
          ? _value.documentPath
          : documentPath // ignore: cast_nullable_to_non_nullable
              as String?,
      documentName: freezed == documentName
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as String?,
      documentExtension: freezed == documentExtension
          ? _value.documentExtension
          : documentExtension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtDetailsModelImplCopyWith<$Res>
    implements $ArtDetailsModelCopyWith<$Res> {
  factory _$$ArtDetailsModelImplCopyWith(_$ArtDetailsModelImpl value,
          $Res Function(_$ArtDetailsModelImpl) then) =
      __$$ArtDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'security') int? security,
      @JsonKey(name: 'document_path') String? documentPath,
      @JsonKey(name: 'document_name') String? documentName,
      @JsonKey(name: 'document_extension') String? documentExtension});
}

/// @nodoc
class __$$ArtDetailsModelImplCopyWithImpl<$Res>
    extends _$ArtDetailsModelCopyWithImpl<$Res, _$ArtDetailsModelImpl>
    implements _$$ArtDetailsModelImplCopyWith<$Res> {
  __$$ArtDetailsModelImplCopyWithImpl(
      _$ArtDetailsModelImpl _value, $Res Function(_$ArtDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? security = freezed,
    Object? documentPath = freezed,
    Object? documentName = freezed,
    Object? documentExtension = freezed,
  }) {
    return _then(_$ArtDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as int?,
      documentPath: freezed == documentPath
          ? _value.documentPath
          : documentPath // ignore: cast_nullable_to_non_nullable
              as String?,
      documentName: freezed == documentName
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as String?,
      documentExtension: freezed == documentExtension
          ? _value.documentExtension
          : documentExtension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtDetailsModelImpl implements _ArtDetailsModel {
  const _$ArtDetailsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'security') this.security,
      @JsonKey(name: 'document_path') this.documentPath,
      @JsonKey(name: 'document_name') this.documentName,
      @JsonKey(name: 'document_extension') this.documentExtension});

  factory _$ArtDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'security')
  final int? security;
  @override
  @JsonKey(name: 'document_path')
  final String? documentPath;
  @override
  @JsonKey(name: 'document_name')
  final String? documentName;
  @override
  @JsonKey(name: 'document_extension')
  final String? documentExtension;

  @override
  String toString() {
    return 'ArtDetailsModel(id: $id, security: $security, documentPath: $documentPath, documentName: $documentName, documentExtension: $documentExtension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.documentPath, documentPath) ||
                other.documentPath == documentPath) &&
            (identical(other.documentName, documentName) ||
                other.documentName == documentName) &&
            (identical(other.documentExtension, documentExtension) ||
                other.documentExtension == documentExtension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, security, documentPath, documentName, documentExtension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtDetailsModelImplCopyWith<_$ArtDetailsModelImpl> get copyWith =>
      __$$ArtDetailsModelImplCopyWithImpl<_$ArtDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ArtDetailsModel implements ArtDetailsModel {
  const factory _ArtDetailsModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'security') final int? security,
      @JsonKey(name: 'document_path') final String? documentPath,
      @JsonKey(name: 'document_name') final String? documentName,
      @JsonKey(name: 'document_extension')
      final String? documentExtension}) = _$ArtDetailsModelImpl;

  factory _ArtDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ArtDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'security')
  int? get security;
  @override
  @JsonKey(name: 'document_path')
  String? get documentPath;
  @override
  @JsonKey(name: 'document_name')
  String? get documentName;
  @override
  @JsonKey(name: 'document_extension')
  String? get documentExtension;
  @override
  @JsonKey(ignore: true)
  _$$ArtDetailsModelImplCopyWith<_$ArtDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
