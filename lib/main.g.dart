// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$doubleCounterHash() => r'9155b761165187a4d5b533006f11b98ca7a31d7d';

/// See also [doubleCounter].
@ProviderFor(doubleCounter)
final doubleCounterProvider = AutoDisposeProvider<int>.internal(
  doubleCounter,
  name: r'doubleCounterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$doubleCounterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DoubleCounterRef = AutoDisposeProviderRef<int>;
String _$counterHash() => r'dae67e44133cfcea2b08ab5eace07d8554509bb8';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
