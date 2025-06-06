part of 'navigation_bloc.dart';

class NavigationState extends Equatable {
  const NavigationState(this.route, {this.data});

  final String route;
  final Map<String, dynamic>? data;

  @override
  List<Object?> get props => [route, data];

  NavigationState copyWith({String? route, Map<String, dynamic>? data}) {
    return NavigationState(route ?? this.route, data: data ?? this.data);
  }
}

class NavigationStateInitial extends NavigationState {
  const NavigationStateInitial() : super(RouteNames.home);
}
