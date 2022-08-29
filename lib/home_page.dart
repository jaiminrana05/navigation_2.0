import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_project/route/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.indigo,
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Flutter Bottom Nested Nav'),
        leading: AutoBackButton(),
      ),
      routes: const [
        PostsRouters(),
        UsersRouter(),
        SettingsRouter(),
        CounterRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            selectedItemColor: Colors.pinkAccent,
            unselectedItemColor: Colors.grey,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Post',
                icon: Icon(Icons.post_add),
              ),
              BottomNavigationBarItem(
                label: 'Users',
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
              BottomNavigationBarItem(
                label: 'Counter',
                icon: Icon(Icons.repeat),
              ),
            ]);
      },
    );
  }
}
