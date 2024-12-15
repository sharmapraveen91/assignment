import 'package:counterapp/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

/// Controls for incrementing and decrementing the counter.
class CounterControls extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterControls({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
          icon: Icons.add,
          onPressed: onIncrement,
        ),
        const SizedBox(height: 16),
        CustomButton(
          icon: Icons.remove,
          onPressed: onDecrement,
        ),
      ],
    );
  }
}
