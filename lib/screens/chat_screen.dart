import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF8B4513),
              child: Icon(Icons.pets, color: Colors.white),
            ),
            title: Text(
              'Bear Chat ${index + 1}',
              style: const TextStyle(
                color: Color(0xFF8B4513),
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