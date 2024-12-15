import 'package:counterapp/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/counter/data/counter_reposiotry.dart';
import 'features/counter/state/counter_notifier.dart';
import 'features/counter/presentation/counter_screen.dart';

/// Main entry point of the application.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
            create: (_) => CounterRepository()), // Provide CounterRepository
        ChangeNotifierProvider(
          create: (context) => CounterNotifier(
              context.read<CounterRepository>()), // Provide CounterNotifier
        ),
      ],
      child: MaterialApp(
        title: 'Raghav Counter App',
        theme: AppThemes.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const CounterScreen(), // Main screen
      ),
    );
  }
}
