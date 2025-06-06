part of 'navigation_bloc.dart';

extension NavigationEventHandler on NavigationBloc {
  void _navigate(
    String route, {
    Map<String, dynamic>? data,
    bool clearBackStack = false,
  }) {
    if (clearBackStack) {
      goRouter.clearStackAndNavigate(route, data: data);
    } else {
      if (data != null) {
        goRouter.push(route, extra: data);
      } else {
        goRouter.push(route);
      }
    }
  }

  void _onHomePagePushed(HomePagePushed event, Emitter<NavigationState> emit) {
    _navigate(RouteNames.home);
    emit(const NavigationState(RouteNames.home));
  }

  void _onLoginPagePushed(
    LoginPagePushed event,
    Emitter<NavigationState> emit,
  ) {
    _navigate(RouteNames.login);
    emit(const NavigationState(RouteNames.login));
  }
}
