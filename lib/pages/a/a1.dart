import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class A1 extends StatelessWidget {
  const A1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'A1',
      actionButton: [
        //pushNamed
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('A2'),
          child: const Text('A2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B'),
          child: const Text('B'),
        ),
        const SizedBox(height: 10),
        const Text('PUSH'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('A2'),
          child: const Text('A2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B'),
          child: const Text('B'),
        ),
      ],
    );
  }
}
