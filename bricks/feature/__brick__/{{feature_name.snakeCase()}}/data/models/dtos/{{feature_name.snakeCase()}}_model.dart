import "dart:convert";

import "../../../domain/entities/{{feature_name.snakeCase()}}_entity.dart";

/// Model that transforms the {{feature_name.pascalCase()}} data from the API to the
/// application entity
class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}}Entity {
/// Model that transforms the {{feature_name.pascalCase()}} data from the API to the
/// application entity
const {{feature_name.pascalCase()}}Model();

{{#areCommentsOn}}/*
  The model is responsible for converting the data into a format that the rest of the application can use. 
  This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */{{/areCommentsOn}}

/// Factory method to create a Home model instance from a JSON
factory {{feature_name.pascalCase()}}Model.fromJson({required String json}) => {{feature_name.pascalCase()}}Model.fromMap(map: jsonDecode(json));

/// Factory method to create a {{feature_name.pascalCase()}} model instance from a map
factory {{feature_name.pascalCase()}}Model.fromMap({required Map<String, dynamic> map}) =>
const {{feature_name.pascalCase()}}Model();

/// Factory method to create a {{feature_name.pascalCase()}} model instance from an
/// entity
factory {{feature_name.pascalCase()}}Model.fromEntity({required {{feature_name.pascalCase()}}Entity entity}) => const {{feature_name.pascalCase()}}Model();

/// Converts the {{feature_name.pascalCase()}} model instance to a map
Map<String, dynamic> toMap() => {};

/// Converts the Home model instance to a JSON
String toJson() => jsonEncode(toMap());

/// Converts the {{feature_name.pascalCase()}} model instance to an entity
{{feature_name.pascalCase()}}Entity toEntity() => const {{feature_name.pascalCase()}}Entity();
}
