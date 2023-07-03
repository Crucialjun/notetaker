import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your email here ',
            ),
            controller: _emailController,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your password here ',
            ),
            controller: _passwordController,
          ),
          TextButton(onPressed: () {}, child: const Text("Register")),
        ],
      ),
    );
  }
}
