import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Column(
      children: [
        const SizedBox(height: 20),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.pets, size: 32, color: Color(0xFF8B4513)),
                    const SizedBox(width: 8),
                    Text(
                      'Today\'s Thought',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF8B4513),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  appState.current.asLowerCase,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: const Color(0xFF8B4513),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    print('button pressed!');
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Write in Diary'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
} 