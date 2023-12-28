import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int count = ref.watch(counterProvider);
    final int countDoubled = ref.watch(doubleCounterProvider);

    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: const Text('My Counter App Example with Riverpod')),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).increment();
              },
              child: Text('$count'),
            ),
            Text('doubled: $countDoubled'),
          ],
        ),
      ),
    );
  }
}

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}

@riverpod
int doubleCounter(DoubleCounterRef ref) {
  final count = ref.watch(counterProvider);
  return count * 2;
}
