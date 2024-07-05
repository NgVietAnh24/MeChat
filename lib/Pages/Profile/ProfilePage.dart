import 'package:flutter/material.dart';
import 'package:mechat/Pages/Profile/Widgets/UserInfo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            LoginUserInfo(),
          ],
        ),
      ),
    );
  }
}
