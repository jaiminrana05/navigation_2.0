import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'A',
      actionButton: [
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('A1'),
          child: const Text('A1'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('A2'),
          child: const Text('A2'),
        ),
        const SizedBox(height: 10),
        const Text('PUSH'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('A1'),
          child: const Text('A1'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('A2'),
          child: const Text('A2'),
        ),
      ],
    );
  }
}
