import 'package:flutter/material.dart';

class CommonWidget extends StatelessWidget {
  const CommonWidget({
    Key? key,
    required this.appBarTitle,
    required this.actionButton,
  }) : super(key: key);

  final String appBarTitle;
  final List<Widget> actionButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...actionButton,
          ],
        ),
      ),
    );
  }
}
