import 'package:flutter/foundation.dart';

/// A simplified StateNotifier with support for middlewares and logging.
class StateNotifier<T> extends ChangeNotifier {
  T _state;
  final List<void Function(T)> _middlewares;

  StateNotifier(this._state, {List<void Function(T)> middlewares = const []})
      : _middlewares = middlewares;

  // Getter for state
  T get state => _state;

  // Setter for state, applies middlewares and notifies listeners.
  set state(T newState) {
    if (_state != newState) {
      for (var middleware in _middlewares) {
        middleware(newState);
      } // Apply middlewares
      _state = newState;
      notifyListeners(); // Notify listeners about the state change
    }
  }
}
