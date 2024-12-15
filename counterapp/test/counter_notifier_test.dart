import 'package:counterapp/features/counter/data/counter_reposiotry.dart';
import 'package:counterapp/features/counter/state/counter_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Annotation for generating mock classes
@GenerateMocks([CounterRepository])
import 'counter_notifier_test.mocks.dart';

void main() {
  late MockCounterRepository mockRepo;
  late CounterNotifier counterNotifier;

  setUp(() async {
    mockRepo = MockCounterRepository();
    when(mockRepo.getInitialCount()).thenAnswer((_) async => 0);
    counterNotifier = CounterNotifier(mockRepo);

    // Await initialization if it involves asynchronous calls
    await Future.delayed(const Duration(milliseconds: 10));
  });

  test('initial state is 0 from repository', () {
    expect(counterNotifier.state, 0);
  });

  test('increments correctly', () {
    counterNotifier.increment();
    expect(counterNotifier.state, 1);
  });

  test('decrements correctly', () {
    counterNotifier.increment();
    counterNotifier.increment();
    counterNotifier.decrement();
    expect(counterNotifier.state, 1);
  });
}
