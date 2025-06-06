import "http_call_exception.dart";

/// The Exception that is thrown if a server error ocurrs.
class ServerErrorException extends HttpCallException {
  /// The constructor for the server error general exception.
  ///
  /// Can receive the [response] of the HTTP call, a [message], and [extras
  /// values that can be used to manage the exception.
  ServerErrorException({
    required super.title,
    super.data,
    super.message = "We are working on it as quickly as possible",
    super.type = HttpExceptions.serverError,
  });

  /// The constructor for the Bad Certificate exception.
  ServerErrorException.badCertificate({
    super.title = "Invalid certificate",
    super.message = "Server security certificate is invalid",
    super.data,
    super.type = HttpExceptions.badRequest,
  });
}
