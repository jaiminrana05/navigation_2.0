import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'B',
      actionButton: [
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B1'),
          child: const Text('B1'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B2'),
          child: const Text('B2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('pop'),
        ),
        const SizedBox(height: 10),
        const Text('PUSH'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B1'),
          child: const Text('B1'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B2'),
          child: const Text('B2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('pop'),
        ),
      ],
    );
  }
}
