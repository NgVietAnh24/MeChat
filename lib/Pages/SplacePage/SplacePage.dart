import 'package:flutter/material.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Splace screen',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
