import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
          ),
        ),
      ],
    );
  }
}
