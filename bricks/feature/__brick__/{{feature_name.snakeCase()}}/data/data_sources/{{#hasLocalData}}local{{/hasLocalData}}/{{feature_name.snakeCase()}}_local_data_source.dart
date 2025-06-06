import "dart:convert";
import "package:shared_preferences/shared_preferences.dart";

{{#addTemplateCode}}import "../../../../../../core/errors/app_exception.dart";

import "../../models/dtos/{{feature_name.snakeCase()}}_model.dart";{{/addTemplateCode}}

/// Local data source for the {{feature_name.pascalCase()}} collection
abstract
class {{feature_name.pascalCase()}}LocalDataSource {

{{#areCommentsOn}}/*
  A local data source is responsible for abstracting the database layer from the data layer. 
  The data source's main functions are:
    Data Retrieval: It fetches data from the specified source. This could involve making a network request to an API, querying a database, or reading a file.
    Data Storage: It saves data back to the source. This could involve making a POST request to an API, executing an INSERT query on a database, or writing to a file.
    Data Conversion: It often converts the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */{{/areCommentsOn}}

{{#addTemplateCode}}Future<{{feature_name.pascalCase()}}Model> getLast{{feature_name.pascalCase()}}();
Future<void> cache{{feature_name.pascalCase()}}({required {{feature_name.pascalCase()}}Model? {{feature_name.camelCase()}}ToCache});{{/addTemplateCode}}

}

{{#addTemplateCode}}const _cached{{feature_name.pascalCase()}} = "CACHED_{{feature_name.constantCase()}}";{{/addTemplateCode}}

/// Local data source for the {{feature_name.pascalCase()}} collection
class {{feature_name.pascalCase()}}LocalDataSourceImpl implements {{feature_name.pascalCase()}}LocalDataSource {
/// Local data source for the {{feature_name.pascalCase()}} collection
{{feature_name.pascalCase()}}LocalDataSourceImpl({required this.localSource});

/// Shared preferences instance
final SharedPreferences localSource;

{{#areCommentsOn}}/*
  The local data source implementation is responsible for making the actual database requests. 
  It is responsible for converting the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */{{/areCommentsOn}}

{{#addTemplateCode}}@override
Future<{{feature_name.pascalCase()}}Model> getLast{{feature_name.pascalCase()}}() {
final jsonString = localSource.getString(_cached{{feature_name.pascalCase()}});

if (jsonString != null) {
return Future.value({{feature_name.pascalCase()}}Model.fromJson(json: json.decode(jsonString)));
} else {
throw CacheException();
}
}

@override
Future<void> cache{{feature_name.pascalCase()}}({required {{feature_name.pascalCase()}}Model? {{feature_name.camelCase()}}ToCache}) async {
if ({{feature_name.camelCase()}}ToCache != null) {
localSource.setString(
_cached{{feature_name.pascalCase()}},
json.encode(
{{feature_name.camelCase()}}ToCache.toJson(),
),
);
} else {
throw CacheException();
}
}{{/addTemplateCode}}

}
