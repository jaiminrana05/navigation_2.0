import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, this.exception}) : super(key: key);

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      body: Center(
        child: Text(
          exception.toString(),
        ),
      ),
    );
  }
}
