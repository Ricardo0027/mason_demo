{{#addTemplateCode}}import "package:fpdart/fpdart.dart";

import "../../../../core/errors/failure.dart";

import "../../data/models/params/{{feature_name.snakeCase()}}_params.dart";
import "../entities/{{feature_name.snakeCase()}}_entity.dart";{{/addTemplateCode}}

/// Data operations for the {{feature_name.pascalCase()}} collection
abstract class {{feature_name.pascalCase()}}Repository {

{{#areCommentsOn}}/*
  A repository is a collection of data operations. It is responsible for 
  abstracting the data layer from the business logic layer. 
  */{{/areCommentsOn}}

{{#addTemplateCode}}Future<Either<Failure, {{feature_name.pascalCase()}}Entity>> get{{feature_name.pascalCase()}}({
required {{feature_name.pascalCase()}}Params {{feature_name.camelCase()}}Params,
});{{/addTemplateCode}}
}
