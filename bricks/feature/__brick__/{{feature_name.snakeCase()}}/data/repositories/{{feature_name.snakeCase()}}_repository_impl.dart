{{#addTemplateCode}}import "package:fpdart/fpdart.dart";{{/addTemplateCode}}

{{#hasRemoteData}}{{#hasLocalData}}import "../../../../core/network/network_info.dart";{{/hasLocalData}}{{/hasRemoteData}}
{{#addTemplateCode}}import "../../../../core/errors/error_handler.dart";
import "../../../../core/errors/failure.dart";{{/addTemplateCode}}


import "../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart";
{{#hasLocalData}}import "../data_sources/local/{{feature_name.snakeCase()}}_local_data_source.dart";{{/hasLocalData}}
{{#hasRemoteData}}import "../data_sources/remote/{{feature_name.snakeCase()}}_remote_data_source.dart";{{/hasRemoteData}}
{{#addTemplateCode}}import "../models/dtos/{{feature_name.snakeCase()}}_model.dart";
import "../models/params/{{feature_name.snakeCase()}}_params.dart";{{/addTemplateCode}}

/// Data operations for the {{feature_name.pascalCase()}} collection
class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
/// Data operations for the {{feature_name.pascalCase()}} collection
{{feature_name.pascalCase()}}RepositoryImpl({
{{#hasRemoteData}}required this.remoteDataSource,{{/hasRemoteData}}
{{#hasLocalData}}required this.localDataSource,{{/hasLocalData}}
{{#hasRemoteData}}{{#hasLocalData}}required this.networkInfo,{{/hasLocalData}}{{/hasRemoteData}}
});

{{#hasRemoteData}}final {{feature_name.pascalCase()}}RemoteDataSource remoteDataSource;{{/hasRemoteData}}
{{#hasLocalData}}final {{feature_name.pascalCase()}}LocalDataSource localDataSource;{{/hasLocalData}}
{{#hasRemoteData}}{{#hasLocalData}}final NetworkInfo networkInfo;{{/hasLocalData}}{{/hasRemoteData}}

{{#areCommentsOn}}/*
  A repository is a collection of data operations. It is responsible for 
  abstracting the data layer from the business logic layer.
  */{{/areCommentsOn}}

{{#addTemplateCode}}@override
Future<Either<Failure, {{feature_name.pascalCase()}}Model>> get{{feature_name.pascalCase()}}(
{required {{feature_name.pascalCase()}}Params {{feature_name.camelCase()}}Params}) async {

{{#hasRemoteData}}if (await networkInfo.isConnected) {
return ErrorHandler.handleApiCall<{{feature_name.pascalCase()}}Model>(
() {
return remoteDataSource.get{{feature_name.pascalCase()}}({{feature_name.camelCase()}}Params: {{feature_name.camelCase()}}Params);
},
);
} else {
{{#hasLocalData}}return ErrorHandler.handleCacheCall<{{feature_name.pascalCase()}}Model>(
() {
return localDataSource.getLast{{feature_name.pascalCase()}}();
},
);{{/hasLocalData}}
}{{/hasRemoteData}}{{^hasRemoteData}}
{{#hasLocalData}}return ErrorHandler.handleCacheCall<{{feature_name.pascalCase()}}Model>(
() {
return localDataSource.getLast{{feature_name.pascalCase()}}();
},
);{{/hasLocalData}}{{/hasRemoteData}}
}{{/addTemplateCode}}
}
