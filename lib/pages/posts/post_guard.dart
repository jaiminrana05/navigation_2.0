import 'package:auto_route/auto_route.dart';
import 'package:simple_project/route/router.gr.dart';

class PostGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final currentPostId = resolver.route.pathParams.get('postId');

    if (currentPostId == 1 || currentPostId == 2 || currentPostId == 3) {
      resolver.next(true);
    } else {
      router.push(const NotFoundRoute());
    }
  }
}
