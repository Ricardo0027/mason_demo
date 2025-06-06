import 'package:go_router/go_router.dart';

extension GoRouterExtension on GoRouter {
  void clearStackAndNavigate(String location, {Map<String, dynamic>? data}) {
    while (canPop()) {
      pop();
    }
    pushReplacement(location, extra: data);
  }
}
