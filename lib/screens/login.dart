import 'package:flutter/material.dart';
import './bottom_navigation_bar.dart'; // Import màn hình chính

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscured = true;
  final TextEditingController _usernameContrioller = TextEditingController();
  final TextEditingController _passwordContrioller = TextEditingController();
  void _Login() {
    final String username = _usernameContrioller.text;
    final String password = _passwordContrioller.text;

    if (username == 'anh' && password == '2004') {
      // Thay thế màn hình hiện tại bằng màn hình chính
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const BottomNavigationBarExample()),
      );
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đăng nhập thành công')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Đăng nhập thất bại')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Hiển thị hình ảnh cục bộ
            const Image(
              image: AssetImage('assets/Icons/logo_app.png'),
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 80),
            SizedBox(
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: TextFormField(
                  controller: _usernameContrioller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: TextFormField(
                  controller: _passwordContrioller,
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Enter your password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscured = !isObscured;
                        });
                      },
                      icon: Icon(
                        isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
            ),
            // Nút đăng nhập
            ElevatedButton(
              onPressed: () {
                _Login();
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Thêm chức năng quên mật khẩu tại đây
              },
              child: const Text('Quên mật khẩu'),
            ),
          ],
        ),
      ),
    );
  }
}
