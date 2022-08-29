import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error page'),
      ),
      body: const Center(
        child: Text('404 Something Went Wrong!!'),
      ),
    );
  }
}
