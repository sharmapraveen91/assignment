import 'package:flutter_test/flutter_test.dart';
// ignore: avoid_relative_lib_imports
import '../lib/core/state_management/state_notifier.dart';

void main() {
  test('StateNotifier updates state correctly', () {
    final stateNotifier = StateNotifier<int>(0);

    stateNotifier.state = 5;
    expect(stateNotifier.state, 5);

    stateNotifier.state = 10;
    expect(stateNotifier.state, 10);
  });
}
