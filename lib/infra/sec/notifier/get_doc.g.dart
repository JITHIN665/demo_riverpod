// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_doc.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSecurityDocumentNotifierHash() =>
    r'593f64e921e5ee93edb9434bebdd1cbc9a0b1526';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetSecurityDocumentNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ArtDetailsModel> {
  late final String documentId;

  FutureOr<ArtDetailsModel> build({
    required String documentId,
  });
}

/// **GetSecurityDocumentNotifier**
///
/// A Riverpod notifier that manages the state of a `SecurityDocument` object.
/// It fetches and manages detailed information about a specific security document
/// by interacting with the `SecurityRepository`.
///
///
/// Copied from [GetSecurityDocumentNotifier].
@ProviderFor(GetSecurityDocumentNotifier)
const getSecurityDocumentNotifierProvider = GetSecurityDocumentNotifierFamily();

/// **GetSecurityDocumentNotifier**
///
/// A Riverpod notifier that manages the state of a `SecurityDocument` object.
/// It fetches and manages detailed information about a specific security document
/// by interacting with the `SecurityRepository`.
///
///
/// Copied from [GetSecurityDocumentNotifier].
class GetSecurityDocumentNotifierFamily
    extends Family<AsyncValue<ArtDetailsModel>> {
  /// **GetSecurityDocumentNotifier**
  ///
  /// A Riverpod notifier that manages the state of a `SecurityDocument` object.
  /// It fetches and manages detailed information about a specific security document
  /// by interacting with the `SecurityRepository`.
  ///
  ///
  /// Copied from [GetSecurityDocumentNotifier].
  const GetSecurityDocumentNotifierFamily();

  /// **GetSecurityDocumentNotifier**
  ///
  /// A Riverpod notifier that manages the state of a `SecurityDocument` object.
  /// It fetches and manages detailed information about a specific security document
  /// by interacting with the `SecurityRepository`.
  ///
  ///
  /// Copied from [GetSecurityDocumentNotifier].
  GetSecurityDocumentNotifierProvider call({
    required String documentId,
  }) {
    return GetSecurityDocumentNotifierProvider(
      documentId: documentId,
    );
  }

  @override
  GetSecurityDocumentNotifierProvider getProviderOverride(
    covariant GetSecurityDocumentNotifierProvider provider,
  ) {
    return call(
      documentId: provider.documentId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSecurityDocumentNotifierProvider';
}

/// **GetSecurityDocumentNotifier**
///
/// A Riverpod notifier that manages the state of a `SecurityDocument` object.
/// It fetches and manages detailed information about a specific security document
/// by interacting with the `SecurityRepository`.
///
///
/// Copied from [GetSecurityDocumentNotifier].
class GetSecurityDocumentNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetSecurityDocumentNotifier,
        ArtDetailsModel> {
  /// **GetSecurityDocumentNotifier**
  ///
  /// A Riverpod notifier that manages the state of a `SecurityDocument` object.
  /// It fetches and manages detailed information about a specific security document
  /// by interacting with the `SecurityRepository`.
  ///
  ///
  /// Copied from [GetSecurityDocumentNotifier].
  GetSecurityDocumentNotifierProvider({
    required String documentId,
  }) : this._internal(
          () => GetSecurityDocumentNotifier()..documentId = documentId,
          from: getSecurityDocumentNotifierProvider,
          name: r'getSecurityDocumentNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSecurityDocumentNotifierHash,
          dependencies: GetSecurityDocumentNotifierFamily._dependencies,
          allTransitiveDependencies:
              GetSecurityDocumentNotifierFamily._allTransitiveDependencies,
          documentId: documentId,
        );

  GetSecurityDocumentNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.documentId,
  }) : super.internal();

  final String documentId;

  @override
  FutureOr<ArtDetailsModel> runNotifierBuild(
    covariant GetSecurityDocumentNotifier notifier,
  ) {
    return notifier.build(
      documentId: documentId,
    );
  }

  @override
  Override overrideWith(GetSecurityDocumentNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetSecurityDocumentNotifierProvider._internal(
        () => create()..documentId = documentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        documentId: documentId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetSecurityDocumentNotifier,
      ArtDetailsModel> createElement() {
    return _GetSecurityDocumentNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSecurityDocumentNotifierProvider &&
        other.documentId == documentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSecurityDocumentNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ArtDetailsModel> {
  /// The parameter `documentId` of this provider.
  String get documentId;
}

class _GetSecurityDocumentNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetSecurityDocumentNotifier,
        ArtDetailsModel> with GetSecurityDocumentNotifierRef {
  _GetSecurityDocumentNotifierProviderElement(super.provider);

  @override
  String get documentId =>
      (origin as GetSecurityDocumentNotifierProvider).documentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
