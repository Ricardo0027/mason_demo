import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/navigation/utils/routes_names.dart';
import 'features/login/presentation/view/login_page.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: RouteNames.home,
        pageBuilder: (context, state) {
          return const CustomTransitionPage(
            child: LoginPage(),
            transitionsBuilder: _customPageTransition,
          );
        },
      ),
    ],
  );

  static Widget _customPageTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var reverseTween = Tween(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).chain(CurveTween(curve: curve));

    var offsetAnimation = animation.drive(tween);
    var reverseOffsetAnimation = secondaryAnimation.drive(reverseTween);

    return SlideTransition(
      position: animation.status == AnimationStatus.reverse
          ? reverseOffsetAnimation
          : offsetAnimation,
      child: child,
    );
  }
}
