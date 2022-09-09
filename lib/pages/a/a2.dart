import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class A2 extends StatelessWidget {
  const A2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'A2',
      actionButton: [
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B'),
          child: const Text('B'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B1'),
          child: const Text('B1'),
        ),
        const SizedBox(height: 10),
        const Text('PUSH'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B'),
          child: const Text('B'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B1'),
          child: const Text('B1'),
        ),
      ],
    );
  }
}
