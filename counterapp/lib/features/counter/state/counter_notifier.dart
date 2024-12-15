import 'package:counterapp/core/state_management/state_middleware.dart';
import 'package:counterapp/core/state_management/state_notifier.dart';
import 'package:counterapp/features/counter/data/counter_reposiotry.dart';
import 'package:flutter/foundation.dart';

/// Notifier for managing the counter state.
class CounterNotifier extends StateNotifier<int> {
  final CounterRepository repository;

  CounterNotifier(this.repository) : super(0, middlewares: [loggingMiddleware]);

  // Increment counter value.
  void increment() => state++;

  // Decrement counter value.
  void decrement() => state--;
}
