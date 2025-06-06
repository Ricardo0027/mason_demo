import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/{{feature_name.snakeCase()}}_params.dart";
import "../entities/{{feature_name.snakeCase()}}_entity.dart";
import "../repositories/{{feature_name.snakeCase()}}_repository.dart";

class Get {
  {

  feature_name

      .

  pascalCase

  (

  )
}}

implements UseCase
<
{{feature_name.pascalCase()}}
Entity, {{feature_name.pascalCase()}}Params> {
final {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;

Get{{feature_name.pascalCase()}}({required this.{{feature_name.camelCase()}}Repository});

@override
Future<Either<Failure, {{feature_name.pascalCase()}}Entity>> call({
required {{feature_name.pascalCase()}}Params params,
}) {
{{^addTemplateCode}}
// TODO: implement call
throw UnimplementedError();
{{/addTemplateCode}}
{{#addTemplateCode}}
return {{feature_name.camelCase()}}Repository.get{{feature_name.pascalCase()}}({{feature_name.camelCase()}}Params: params);
{{/addTemplateCode}}
}
}
