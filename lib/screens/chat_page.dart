import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
              backgroundColor: AppColors.primaryBrown,
              child: Icon(Icons.pets, color: AppColors.iconWhite),
            ),
            title: Text(
              'Bear Chat ${index + 1}',
              style: const TextStyle(
                color: AppColors.textBrown,
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