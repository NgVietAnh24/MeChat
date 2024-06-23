import 'package:flutter/material.dart';

class ChatSection_Screen extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  const ChatSection_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Đoạn chat',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: const Text(
        'Index 0: Đoạn chat',
        style: optionStyle,
      ),
    );
  }
}
