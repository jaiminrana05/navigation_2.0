import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:simple_project/pages/counter/counter.dart';
import 'package:simple_project/pages/posts/post_guard.dart';
import 'package:simple_project/pages/posts/single_post_page.dart';
import 'package:simple_project/pages/settings/setting_tab.dart';
import 'package:simple_project/pages/users/user_guard.dart';
import 'package:simple_project/pages/users/user_profile_page.dart';

import '../home_page.dart';
import '../not_found_page.dart';
import '../pages/posts/post_tab.dart';
import '../pages/users/user_tab.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        //post tab routing
        AutoRoute(
          path: 'posts',
          name: 'PostsRouters',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsTab,
            ),
            AutoRoute(
              path: ':postId',
              guards: [PostGuard],
              page: SinglePostPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
            AutoRoute(
              path: 'Error',
              name: 'NotFoundRoute',
              page: NotFoundPage,
            )
          ],
        ),
        //user tab routing
        AutoRoute(
          path: 'users',
          name: 'usersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UserTab,
            ),
            AutoRoute(
              path: ':userId',
              guards: [UserGuard],
              page: UserProfilePage,
            ),
            AutoRoute(
              path: 'Error',
              name: 'NotFoundRoute',
              page: NotFoundPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        //setting tab routing
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        ),
        //Counter tab routing
        AutoRoute(
          path: 'counter',
          name: 'CounterRouter',
          page: Counter,
        ),
      ],
    ),
    // AutoRoute(path: '/', name: 'login',
    //     // page: ,
    //     children: [
    //
    //     ]),
  ],
)
class $AppRouter {}
