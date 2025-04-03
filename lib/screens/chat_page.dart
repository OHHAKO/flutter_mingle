import 'package:flutter/material.dart';

import '../constants/design_system.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(DesignSystem.spacing16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.only(bottom: DesignSystem.spacing8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: DesignSystem.primaryBrown,
              child: Icon(Icons.pets, color: DesignSystem.surface),
            ),
            title: Text(
              'Bear Chat ${index + 1}',
              style: const TextStyle(
                color: DesignSystem.textBrown,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('This is a chat message ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // 채팅방으로 이동
            },
          ),
        );
      },
    );
  }
} 