import 'package:flutter/foundation.dart';

/// Logging middleware that logs state changes.
void loggingMiddleware<T>(T newState) {
  debugPrint('State changed to: $newState');
}
