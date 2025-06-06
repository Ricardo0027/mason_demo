part of '{{feature_name.snakeCase()}}_bloc.dart';

abstract
class {{feature_name.pascalCase()}}Event extends Equatable {
const {{feature_name.pascalCase()}}Event();
@override
List<Object> get props => [];

}

/// {@template custom_{{feature_name.snakeCase()}}_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class Custom{{feature_name.pascalCase()}}Event extends {{feature_name.pascalCase()}}Event {
/// {@macro custom_{{feature_name.snakeCase()}}_event}
const Custom{{feature_name.pascalCase()}}Event();
}