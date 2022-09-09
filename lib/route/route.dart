import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/a/a0.dart';
import 'package:simple_project/pages/a/a1.dart';
import 'package:simple_project/pages/a/a2.dart';
import 'package:simple_project/pages/error/error_screen.dart';

import '../pages/b/b0.dart';
import '../pages/b/b1.dart';
import '../pages/b/b2.dart';

class MyRoutes {
  MyRoutes._internal();

  static final MyRoutes _instance = MyRoutes._internal();

  factory MyRoutes() {
    return _instance;
  }

  final routes = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: '/a',
    routes: [
      GoRoute(
        path: '/a',
        name: 'A',
        pageBuilder: (context, state) => const MaterialPage(
          child: A(),
        ),
        routes: [
          GoRoute(
            path: 'a1',
            name: 'A1',
            pageBuilder: (context, state) => const MaterialPage(
              child: A1(),
            ),
          ),
          GoRoute(
            path: 'a2',
            name: 'A2',
            pageBuilder: (context, state) => const MaterialPage(
              child: A2(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/b',
        name: 'B',
        pageBuilder: (context, state) => const MaterialPage(
          child: B(),
        ),
        routes: [
          GoRoute(
            path: 'b1',
            name: 'B1',
            pageBuilder: (context, state) => const MaterialPage(
              child: B1(),
            ),
          ),
          GoRoute(
            path: 'b2',
            name: 'B2',
            pageBuilder: (context, state) => const MaterialPage(
              child: B2(),
            ),
          ),
        ],
      ),

      // GoRoute(
      //   path: '/HomeScreen',
      //   name: 'Home',
      //   pageBuilder: (context, state) => const MaterialPage(
      //     child: HomeScreen(),
      //   ),
      //
      //   ///Sub-Route of HomeScreen
      //   routes: [
      //     GoRoute(
      //       path: 'FirstScreen',
      //       name: 'First',
      //       pageBuilder: (context, state) => const MaterialPage(
      //         child: FirstScreen(),
      //       ),
      //
      //       ///Sub-Route of FirstScreen
      //       routes: [
      //         GoRoute(
      //           path: 'CounterScreen',
      //           name: 'Counter',
      //           pageBuilder: (context, state) => const MaterialPage(
      //             child: CounterScreen(
      //               title: 'Counter Screen',
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     GoRoute(
      //       path: 'SecondScreen',
      //       name: 'second',
      //       pageBuilder: (context, state) => const MaterialPage(
      //         child: SecondScreen(),
      //       ),
      //     ),
      //   ],
      // ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(error: state.error),
    ),
  );
}
