import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'Home Page',
      actionButton: [
        ElevatedButton(
          onPressed: () => context.goNamed('First'),
          child: const Text('go /FirstScreen'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('Second'),
          child: const Text('go /SecondScreen'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('Second'),
          child: const Text('push /SecondScreen'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('Counter'),
          child: const Text('go /CounterScreen'),
        ),
      ],
    );
  }
}
