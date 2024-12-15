/// Repository to handle fetching and managing counter data.
class CounterRepository {
  // Simulate fetching the initial count asynchronously.
  Future<int> getInitialCount() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return 0; // Return the initial count
  }
}
