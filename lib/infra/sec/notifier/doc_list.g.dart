// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$securityDocumentsNotifierHash() =>
    r'91621840213a3cda9a6b6c93fa07f17707d03e78';

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

abstract class _$SecurityDocumentsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<ArtDetailsModel>> {
  late final String securityId;

  FutureOr<List<ArtDetailsModel>> build({
    required String securityId,
  });
}

/// **SecurityDocumentsNotifier**
///
/// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
/// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
///
/// Copied from [SecurityDocumentsNotifier].
@ProviderFor(SecurityDocumentsNotifier)
const securityDocumentsNotifierProvider = SecurityDocumentsNotifierFamily();

/// **SecurityDocumentsNotifier**
///
/// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
/// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
///
/// Copied from [SecurityDocumentsNotifier].
class SecurityDocumentsNotifierFamily
    extends Family<AsyncValue<List<ArtDetailsModel>>> {
  /// **SecurityDocumentsNotifier**
  ///
  /// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
  /// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
  ///
  /// Copied from [SecurityDocumentsNotifier].
  const SecurityDocumentsNotifierFamily();

  /// **SecurityDocumentsNotifier**
  ///
  /// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
  /// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
  ///
  /// Copied from [SecurityDocumentsNotifier].
  SecurityDocumentsNotifierProvider call({
    required String securityId,
  }) {
    return SecurityDocumentsNotifierProvider(
      securityId: securityId,
    );
  }

  @override
  SecurityDocumentsNotifierProvider getProviderOverride(
    covariant SecurityDocumentsNotifierProvider provider,
  ) {
    return call(
      securityId: provider.securityId,
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
  String? get name => r'securityDocumentsNotifierProvider';
}

/// **SecurityDocumentsNotifier**
///
/// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
/// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
///
/// Copied from [SecurityDocumentsNotifier].
class SecurityDocumentsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SecurityDocumentsNotifier,
        List<ArtDetailsModel>> {
  /// **SecurityDocumentsNotifier**
  ///
  /// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
  /// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
  ///
  /// Copied from [SecurityDocumentsNotifier].
  SecurityDocumentsNotifierProvider({
    required String securityId,
  }) : this._internal(
          () => SecurityDocumentsNotifier()..securityId = securityId,
          from: securityDocumentsNotifierProvider,
          name: r'securityDocumentsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$securityDocumentsNotifierHash,
          dependencies: SecurityDocumentsNotifierFamily._dependencies,
          allTransitiveDependencies:
              SecurityDocumentsNotifierFamily._allTransitiveDependencies,
          securityId: securityId,
        );

  SecurityDocumentsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.securityId,
  }) : super.internal();

  final String securityId;

  @override
  FutureOr<List<ArtDetailsModel>> runNotifierBuild(
    covariant SecurityDocumentsNotifier notifier,
  ) {
    return notifier.build(
      securityId: securityId,
    );
  }

  @override
  Override overrideWith(SecurityDocumentsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SecurityDocumentsNotifierProvider._internal(
        () => create()..securityId = securityId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        securityId: securityId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SecurityDocumentsNotifier,
      List<ArtDetailsModel>> createElement() {
    return _SecurityDocumentsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecurityDocumentsNotifierProvider &&
        other.securityId == securityId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, securityId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SecurityDocumentsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<ArtDetailsModel>> {
  /// The parameter `securityId` of this provider.
  String get securityId;
}

class _SecurityDocumentsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SecurityDocumentsNotifier,
        List<ArtDetailsModel>> with SecurityDocumentsNotifierRef {
  _SecurityDocumentsNotifierProviderElement(super.provider);

  @override
  String get securityId =>
      (origin as SecurityDocumentsNotifierProvider).securityId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
