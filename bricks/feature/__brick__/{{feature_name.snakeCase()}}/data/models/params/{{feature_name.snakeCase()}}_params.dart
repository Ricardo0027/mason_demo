import '../../../../../core/constants/classes/params.dart';

/// Parameters used to make the {{feature_name.pascalCase()}} request.
class {{feature_name.pascalCase()}}Params extends Params {
/// Parameters used to make the {{feature_name.pascalCase()}} request.
{{feature_name.pascalCase()}}Params();

{{#areCommentsOn}}/*
  The params class is responsible for holding the data that will be used to make the request to the API. 
  It is also responsible for converting the data into a format that the API can use. 
  This could involve serializing objects into JSON, or mapping objects to database rows.
  */{{/areCommentsOn}}

@override
Map<String, dynamic> headers() => {
"Authorization": "Bearer $accessToken",
};

@override
Map<String, dynamic>? queries() => null;

@override
Map<String, dynamic> body() => {};
}