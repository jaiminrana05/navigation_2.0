import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_project/route/router.gr.dart';

import '../../common_widget.dart';
import '../../model_data/data.dart';

class UserTab extends StatelessWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < users.length; i++)
            UserAvatar(
              avatarColor: users[i].color,
              username: 'user${users[i].id}',
              onAvatarTap: () => context.router.push(
                UserProfileRoute(userId: users[i].id),
              ),
            ),
        ],
      ),
    );
  }
}
