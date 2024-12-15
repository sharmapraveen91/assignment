import 'package:counterapp/features/counter/state/counter_notifier.dart';
import 'package:counterapp/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Main screen displaying the current counter value.
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterNotifier>().state;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Text(
            'Counter: $count',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.add,
            onPressed: context.read<CounterNotifier>().increment,
          ),
          const SizedBox(height: 16),
          CustomButton(
            icon: Icons.remove,
            onPressed: context.read<CounterNotifier>().decrement,
          ),
        ],
      ),
    );
  }
}
