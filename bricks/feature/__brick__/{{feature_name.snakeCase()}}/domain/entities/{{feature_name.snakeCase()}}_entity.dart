import "package:equatable/equatable.dart";

/// Entity that contains the data of the {{feature_name.pascalCase()}}.
class {{feature_name.pascalCase()}}Entity extends Equatable{
/// Entity that contains the data of the {{feature_name.pascalCase()}}.
const {{feature_name.pascalCase()}}Entity();

{{#areCommentsOn}}/*
  An entity represents a real-world object with a distinct identity. 
  */{{/areCommentsOn}}

@override
List<Object?> get props => [
{{#areCommentsOn}}/*
  List your entity attributes here 
  */{{/areCommentsOn}}
];

@override
bool get stringify => true;
}