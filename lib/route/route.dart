import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/pages/error/error_screen.dart';
import 'package:simple_project/pages/first/counter_screen.dart';
import 'package:simple_project/pages/first/first_screen.dart';
import 'package:simple_project/pages/home/Home_screen.dart';

import '../pages/second/second_screen.dart';

class MyRoutes {
  MyRoutes._internal();

  static final MyRoutes _instance = MyRoutes._internal();

  factory MyRoutes() {
    return _instance;
  }

  final routes = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: '/HomeScreen',
    routes: [
      GoRoute(
        path: '/HomeScreen',
        name: 'Home',
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),

        ///Sub-Route of HomeScreen
        routes: [
          GoRoute(
            path: 'FirstScreen',
            name: 'First',
            pageBuilder: (context, state) => const MaterialPage(
              child: FirstScreen(),
            ),

            ///Sub-Route of FirstScreen
            routes: [
              GoRoute(
                path: 'CounterScreen',
                name: 'Counter',
                pageBuilder: (context, state) => const MaterialPage(
                  child: CounterScreen(
                    title: 'Counter Screen',
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'SecondScreen',
            name: 'second',
            pageBuilder: (context, state) => const MaterialPage(
              child: SecondScreen(),
            ),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(error: state.error),
    ),
  );
}
