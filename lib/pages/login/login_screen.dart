import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_store.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Login>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
            controller: store.email,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            controller: store.password,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('LogIn'),
          ),
        ],
      ),
    );
  }
}
