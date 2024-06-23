import 'package:flutter/material.dart';

class Story_Screen extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  const Story_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tin',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: const Text(
          'Index 2: Tin',
          style: optionStyle,
        ),
      ),
    );
  }
}
