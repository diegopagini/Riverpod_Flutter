// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'40d6ddf9d317f876406cb406710b21993915ac65';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
String _$darkModeHash() => r'ba0ccb8b79ed9f318bcea138b4d9fcca785a64bf';

/// See also [DarkMode].
@ProviderFor(DarkMode)
final darkModeProvider = AutoDisposeNotifierProvider<DarkMode, bool>.internal(
  DarkMode.new,
  name: r'darkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DarkMode = AutoDisposeNotifier<bool>;
String _$randomNameHash() => r'b875dc37a07e6547a81b33ffa695a91095fefc16';

/// See also [RandomName].
@ProviderFor(RandomName)
final randomNameProvider = NotifierProvider<RandomName, String>.internal(
  RandomName.new,
  name: r'randomNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RandomName = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
