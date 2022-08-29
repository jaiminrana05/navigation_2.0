import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_project/pages/login/login_store.dart';
import 'package:simple_project/pages/posts/post_guard.dart';
import 'package:simple_project/pages/users/user_guard.dart';
import 'package:simple_project/route/router.gr.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(
      postGuard: PostGuard(),
      userGuard: UserGuard(),
    );
    return Provider(
      create: (_) => Login(),
      child: MaterialApp.router(
        title: 'Auto Route',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: appRouter.delegate(),
        routeInformationProvider: appRouter.routeInfoProvider(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
