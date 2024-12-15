import 'package:counterapp/core/state_management/async_state.dart';
import 'package:counterapp/core/state_management/state_notifier.dart';

/// Notifier for managing async state (loading, success, error).
class AsyncStateNotifier<T> extends StateNotifier<AsyncState<T>> {
  AsyncStateNotifier() : super(AsyncState.loading());

  // Fetch data from a given function and update the state.
  Future<void> fetchData(Future<T> Function() fetchFunction) async {
    state = AsyncState.loading(); // Loading state
    try {
      final result = await fetchFunction();
      state = AsyncState.success(result); // Success state
    } catch (e) {
      state = AsyncState.error(e.toString()); // Error state
    }
  }
}
