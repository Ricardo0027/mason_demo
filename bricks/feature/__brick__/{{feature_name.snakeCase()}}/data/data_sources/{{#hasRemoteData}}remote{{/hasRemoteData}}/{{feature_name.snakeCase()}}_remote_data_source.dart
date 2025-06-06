import "../../../../../core/adapters/dio_adapter.dart";
{{#addTemplateCode}}import "../../models/params/{{feature_name.snakeCase()}}_params.dart";
import "../../models/dtos/{{feature_name.snakeCase()}}_model.dart";{{/addTemplateCode}}

/// Remote data source for the {{feature_name.pascalCase()}} collection
abstract
class {{feature_name.pascalCase()}}RemoteDataSource {

{{#areCommentsOn}}/*
  A remote data source is responsible for abstracting the API layer from the data layer. 
  The data source's main functions are:
    Data Retrieval: It fetches data from the specified source. This could involve making a network request to an API, querying a database, or reading a file.
    Data Storage: It saves data back to the source. This could involve making a POST request to an API, executing an INSERT query on a database, or writing to a file.
    Data Conversion: It often converts the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */{{/areCommentsOn}}

{{#addTemplateCode}}Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}({
required {{feature_name.pascalCase()}}Params {{feature_name.camelCase()}}Params,
});{{/addTemplateCode}}

}

/// Remote data source for the {{feature_name.pascalCase()}} collection
class {{feature_name.pascalCase()}}RemoteDataSourceImpl implements {{feature_name.pascalCase()}}RemoteDataSource {
/// Remote data source for the {{feature_name.pascalCase()}} collection
{{feature_name.pascalCase()}}RemoteDataSourceImpl({required this.dio});

/// Dio adapter instance
final DioAdapter dio;

{{#areCommentsOn}}/*
  The remote data source implementation is responsible for making the actual API requests. 
  It is responsible for converting the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */{{/areCommentsOn}}

{{#addTemplateCode}}@override
Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}({
required {{feature_name.pascalCase()}}Params {{feature_name.camelCase()}}Params,
}) async {
final response = await dio.get(
"YOUR_API_URL_HERE",
queryParameters: {
"api_key": "if needed",
},
);

return {{feature_name.pascalCase()}}Model.fromJson(json: response.data);

}{{/addTemplateCode}}

}
