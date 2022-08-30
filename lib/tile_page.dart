import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TilePage extends StatelessWidget {
  const TilePage({Key? key, required this.currentTile}) : super(key: key);

  final int currentTile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tile $currentTile'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () =>
                  context.go('/tilePage?:currentTile=$currentTile'),

              //context.goNamed('secondScreen'),
              child: const Text('goto second page')),
          Text(
            'hi',
            //context.go('/tilePage?currentTile=$currentTile')
            // context.namedLocation(
            //   'tileScreen',
            //   queryParams: <String, String>{
            //     'currentTile': currentTile.toString()
            //   },
            //),
          ),
        ],
      ),
    );
  }
}
