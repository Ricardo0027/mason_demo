part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object?> get props => [];
}

class HomePagePushed extends NavigationEvent {
  const HomePagePushed();

  @override
  List<Object?> get props => [];
}

class LoginPagePushed extends NavigationEvent {
  const LoginPagePushed();

  @override
  List<Object?> get props => [];
}
