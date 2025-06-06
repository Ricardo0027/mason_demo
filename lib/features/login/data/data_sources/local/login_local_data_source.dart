import "dart:convert";

import "package:shared_preferences/shared_preferences.dart";

import "../../../../../../core/errors/app_exception.dart";
import "../../models/dtos/login_model.dart";

/// Local data source for the Login collection
abstract class LoginLocalDataSource {
  /*
  A local data source is responsible for abstracting the database layer from the data layer.
  The data source's main functions are:
    Data Retrieval: It fetches data from the specified source. This could involve making a network request to an API, querying a database, or reading a file.
    Data Storage: It saves data back to the source. This could involve making a POST request to an API, executing an INSERT query on a database, or writing to a file.
    Data Conversion: It often converts the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */

  Future<LoginModel> getLastLogin();

  Future<void> cacheLogin({required LoginModel? loginToCache});
}

const _cachedLogin = "CACHED_LOGIN";

/// Local data source for the Login collection
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  /// Local data source for the Login collection
  LoginLocalDataSourceImpl({required this.localSource});

  /// Shared preferences instance
  final SharedPreferences localSource;

  /*
  The local data source implementation is responsible for making the actual database requests.
  It is responsible for converting the data into a format that the rest of the application can use. This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */

  @override
  Future<LoginModel> getLastLogin() {
    final jsonString = localSource.getString(_cachedLogin);

    if (jsonString != null) {
      return Future.value(LoginModel.fromJson(json: json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheLogin({required LoginModel? loginToCache}) async {
    if (loginToCache != null) {
      localSource.setString(_cachedLogin, json.encode(loginToCache.toJson()));
    } else {
      throw CacheException();
    }
  }
}
