import 'package:equatable/equatable.dart';
import 'package:go_router/go_router.dart';
import 'package:mason_demo/core/navigation/utils/gorouter_extension.dart';
import 'package:mason_demo/core/navigation/utils/routes_names.dart';

import 'bloc.dart';

part 'navigation_event.dart';
part 'navigation_event_handler.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({required this.goRouter})
    : super(const NavigationState(RouteNames.dashboard)) {
    on<HomePagePushed>(_onHomePagePushed);
    on<LoginPagePushed>(_onLoginPagePushed);
  }

  final GoRouter goRouter;
}
