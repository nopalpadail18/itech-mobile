import 'package:flutter/material.dart';
import 'package:itech/JSON/users.dart';
import 'package:itech/SQLite/database_helper.dart';
import 'package:itech/screens/forgot_password.dart';
import 'package:itech/screens/home_screen.dart';
import 'package:itech/screens/naviation_screen.dart';
import 'package:itech/screens/onboarding_screen.dart';
import 'package:itech/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool isLoginTrue = false;
  final db = DatabaseHelper();

  // login  method
  login() async {
    var res = await db
        .authenticate(Users(email: email.text, password: password.text));
    if (res == true) {
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NavigationScreen()),
      );
    } else {
      setState(() {
        isLoginTrue = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/thank.png',
              width: 200,
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                labelText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Enter Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: const Text("Forgot Password",
                    style: TextStyle(fontSize: 13)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                login();
              },
              child: const Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xFF4f4fda),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 18, color: Colors.black54)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text("Register", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),

            // message if username or password is wrong
            isLoginTrue
                ? const Text(
                    'username or password is wrong',
                    style: TextStyle(color: Colors.red),
                  )
                : const SizedBox(height: 0),
          ],
        ),
      ))),
    );
  }
}
