import 'package:flutter/material.dart';

class Directory_Screen extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  const Directory_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Danh bạ',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: const Text(
        'Index 1: Danh bạ',
        style: optionStyle,
      ),
    );
  }
}
