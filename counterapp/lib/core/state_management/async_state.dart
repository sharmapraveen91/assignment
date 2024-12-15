/// Represents the state of an asynchronous operation.
/// Represents the state of an asynchronous operation.
class AsyncState<T> {
  final bool isLoading;
  final T? data;
  final String? error;

  AsyncState._(this.isLoading, this.data, this.error);

  // Factory method for loading state (initial state).
  factory AsyncState.loading() => AsyncState._(true, null, null);

  // Factory method for success state (data is available).
  factory AsyncState.success(T data) => AsyncState._(false, data, null);

  // Factory method for error state (an error occurred).
  factory AsyncState.error(String error) => AsyncState._(false, null, error);
}
