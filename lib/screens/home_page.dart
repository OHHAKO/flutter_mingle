import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    const Icon(Icons.pets, size: 32, color: AppColors.iconBrown),
                    const SizedBox(width: 8),
                    Text(
                      'Today\'s Thought',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.textBrown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  appState.current.asLowerCase,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppColors.textBrown,
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