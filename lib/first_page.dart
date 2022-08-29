import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum BottomNavigationTabs { apple, business, school }

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.child,
    required this.selectedTab,
  }) : super(key: key);

  final BottomNavigationTabs selectedTab;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: AdaptiveNavigationScaffold(
        destinations: const [
          AdaptiveScaffoldDestination(title: 'Apple', icon: Icons.apple),
          AdaptiveScaffoldDestination(title: 'Business', icon: Icons.business),
          AdaptiveScaffoldDestination(title: 'School', icon: Icons.school),
        ],
        selectedIndex: selectedTab.index,
        body: child,
        onDestinationSelected: (index) {
          switch (BottomNavigationTabs.values[index]) {
            case BottomNavigationTabs.apple:
              context.go('/bottomNavigationTab/apple');
              break;
            case BottomNavigationTabs.business:
              context.go('/bottomNavigationTab/business');
              break;
            case BottomNavigationTabs.school:
              context.go('/bottomNavigationTab/school');
              break;
          }
        },
      ),
    );
  }
}
