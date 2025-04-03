import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/design_system.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Column(
      children: [
        SizedBox(height: DesignSystem.spacing20),
        Card(
          margin: EdgeInsets.symmetric(horizontal: DesignSystem.spacing16),
          child: Padding(
            padding: EdgeInsets.all(DesignSystem.spacing20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pets, size: 32, color: DesignSystem.primaryBrown),
                    SizedBox(width: DesignSystem.spacing8),
                    Text(
                      'Today\'s Thought',
                      style: DesignSystem.titleLarge,
                    ),
                  ],
                ),
                SizedBox(height: DesignSystem.spacing16),
                Text(
                  appState.current.asLowerCase,
                  style: DesignSystem.headlineSmall,
                ),
                SizedBox(height: DesignSystem.spacing20),
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