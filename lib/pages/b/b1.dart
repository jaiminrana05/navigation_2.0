import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/common_widget.dart';

class B1 extends StatelessWidget {
  const B1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      appBarTitle: 'B1',
      actionButton: [
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('B2'),
          child: const Text('B2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.goNamed('A'),
          child: const Text('A'),
        ),
        const SizedBox(height: 10),
        const Text('PUSH'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('B2'),
          child: const Text('B2'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => context.pushNamed('A'),
          child: const Text('A'),
        ),
      ],
    );
  }
}
