/// Exception class for the application.
///
/// This class is used to handle the exceptions in the application.
class AppException implements Exception {
  /// Exception class for the application.
  ///
  /// This class is used to handle the exceptions in the application.
  AppException({
    this.title = "Error",
    this.message = "An unexpected error occurred. Please try again.",
  });

  /// The title of the exception.
  final String title;

  /// The message of the exception.
  final String message;
}

/// Exception thrown when a connection to the local database fails.
class CacheException extends AppException {
  /// Exception thrown when a connection to the local database fails.
  CacheException({
    super.title = "Error accessing information on the device",
    super.message = "Please try again.",
  });
}

/// Exception thrown when a connection with the environment fails.
class EnvironmentException extends AppException {
  /// Exception thrown when a connection with the environment fails.
  EnvironmentException({
    super.title = "Environment error",
    super.message = "An error occurred with the environment. Please try again.",
  });
}
