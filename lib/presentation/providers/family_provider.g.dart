// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonAsyncHash() => r'002456a581b81eda3b5749ee7416ce9e880e2e1f';

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

/// See also [pokemonAsync].
@ProviderFor(pokemonAsync)
const pokemonAsyncProvider = PokemonAsyncFamily();

/// See also [pokemonAsync].
class PokemonAsyncFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonAsync].
  const PokemonAsyncFamily();

  /// See also [pokemonAsync].
  PokemonAsyncProvider call(
    int id,
  ) {
    return PokemonAsyncProvider(
      id,
    );
  }

  @override
  PokemonAsyncProvider getProviderOverride(
    covariant PokemonAsyncProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'pokemonAsyncProvider';
}

/// See also [pokemonAsync].
class PokemonAsyncProvider extends FutureProvider<String> {
  /// See also [pokemonAsync].
  PokemonAsyncProvider(
    int id,
  ) : this._internal(
          (ref) => pokemonAsync(
            ref as PokemonAsyncRef,
            id,
          ),
          from: pokemonAsyncProvider,
          name: r'pokemonAsyncProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonAsyncHash,
          dependencies: PokemonAsyncFamily._dependencies,
          allTransitiveDependencies:
              PokemonAsyncFamily._allTransitiveDependencies,
          id: id,
        );

  PokemonAsyncProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonAsyncRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonAsyncProvider._internal(
        (ref) => create(ref as PokemonAsyncRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  FutureProviderElement<String> createElement() {
    return _PokemonAsyncProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonAsyncProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonAsyncRef on FutureProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PokemonAsyncProviderElement extends FutureProviderElement<String>
    with PokemonAsyncRef {
  _PokemonAsyncProviderElement(super.provider);

  @override
  int get id => (origin as PokemonAsyncProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
