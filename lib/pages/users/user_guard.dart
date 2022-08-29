import 'package:auto_route/auto_route.dart';
import 'package:simple_project/model_data/data.dart';
import 'package:simple_project/route/router.gr.dart';

class UserGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final currentUserId =
        resolver.route.queryParams.get('userId').runtimeType == String
            ? int.parse(resolver.route.queryParams.get('userId'))
            : resolver.route.queryParams.get('userId');
    final validUser = checkUserId(currentUserId);
    if (validUser) {
      resolver.next(true);
    } else {
      router.push(const NotFoundRoute());
    }
  }

  bool checkUserId(int id) {
    for (final user in User.users) {
      if (user.id == id) {
        return true;
      }
    }
    return false;
  }
}
