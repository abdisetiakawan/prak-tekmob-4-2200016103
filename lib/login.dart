import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'masuk.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  OutlineInputBorder _customBorder(bool isFocused) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: isFocused ? Colors.blue : Colors.grey,
        width: 1.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/diamond.png'),
        title: Text('SHRINE - 2200016103'),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: [
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'Registrasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Lorem Ipsum dolar sit amet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
                enabledBorder: _customBorder(false),
                focusedBorder: _customBorder(true),
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
                enabledBorder: _customBorder(false),
                focusedBorder: _customBorder(true),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _retypePasswordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Retype Password',
                enabledBorder: _customBorder(false),
                focusedBorder: _customBorder(true),
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('HAPUS'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _retypePasswordController.clear();
                  },
                ),
                ElevatedButton(
                  child: const Text('DAFTAR'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            RichText(
              text: TextSpan(
                text: 'Sudah Punya Akun? ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MasukPage()),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
