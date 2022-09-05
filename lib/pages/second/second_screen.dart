import 'package:flutter/material.dart';
import 'package:simple_project/pages/common_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CommonWidget(
      appBarTitle: 'Second Screen',
      actionButton: [],
    );
  }
}
