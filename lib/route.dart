import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_project/error_page.dart';
import 'package:simple_project/home_page.dart';
import 'package:simple_project/second_page.dart';
import 'package:simple_project/tile_page.dart';

import 'bottom_navigation_tab/apple_tab.dart';
import 'bottom_navigation_tab/business_tab.dart';
import 'bottom_navigation_tab/school_tab.dart';
import 'first_page.dart';

// const String initialRoute = '/';
// const String secondRoute = 'second_page';
// const String tilePage = '/tilePage';

final route = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  routes: [
    GoRoute(
      path: '/',
      redirect: (_) => '/bottomNavigationTab/apple',
    ),
    GoRoute(
      path: '/bottomNavigationTab/apple',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          const MaterialPage(
        child: FirstPage(
          selectedTab: BottomNavigationTabs.apple,
          child: AppleTab(),
        ),
      ),
    ),
    GoRoute(
      path: '/bottomNavigationTab/business',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          const MaterialPage(
        child: FirstPage(
          selectedTab: BottomNavigationTabs.business,
          child: BusinessTab(),
        ),
      ),
    ),
    GoRoute(
      path: '/bottomNavigationTab/school',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          const MaterialPage(
        child: FirstPage(
          selectedTab: BottomNavigationTabs.school,
          child: SchoolTab(),
        ),
      ),
    ),
    GoRoute(
      name: 'homeScreen',
      path: '/i',
      //redirect: ,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const HomePage(
          title: 'Home Page',
        ),
      ),
      routes: [
        GoRoute(
          name: 'secondScreen',
          path: 'second_page',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const SecondPage(),
          ),
        ),
      ],
    ),
    GoRoute(
      name: 'tileScreen',
      path: '/tilePage',
      pageBuilder: (context, state) {
        final tile = int.parse(state.queryParams['currentTile'] ?? '0');
        return MaterialPage(
          key: state.pageKey,
          child: TilePage(
            currentTile: tile,
            //currentTile: state.extra as int,
          ),
        );
      },
      // redirect: (state) {
      //   final currentTile = int.parse(state.params['currentTile'] ?? '0');
      //   if (currentTile > 9) {
      //     return '/errorRoute';
      //   }
      //
      //   return null;
      // },
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: const ErrorPage(),
  ),
);
