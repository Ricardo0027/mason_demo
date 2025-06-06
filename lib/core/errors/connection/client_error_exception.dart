import "http_call_exception.dart";

/// The Exception that is thrown if a client error ocurrs.
class ClientErrorException extends HttpCallException {
  /// The constructor for the client error general exception.
  ///
  /// Can receive the [response] of the HTTP call, a [message], and [extras]
  /// values that can be used to manage the exception.
  ClientErrorException({
    required super.title,
    super.data,
    super.message = "",
    super.type = HttpExceptions.clientError,
  });

  /// The constructor for the unauthorized exception.
  ///
  /// Can receive the [response] of the HTTP call, a [message], and [extras]
  /// values that can be used to manage the exception.
  ClientErrorException.unauthorized({
    super.title = "This user does not have access to this screen",
    super.message = "Contact your administrator to request access",
    super.data,
    super.type = HttpExceptions.unauthorized,
  });

  /// The constructor for the expired token exception.
  ///
  /// Can receive the [response] of the HTTP call, a [message], and [extras]
  /// values that can be used to manage the exception.
  ClientErrorException.expiredToken({
    super.title = "Session expired",
    super.message = "Authorization token is expired",
    super.data,
    super.type = HttpExceptions.expiredToken,
  });

  /// The constructor for the Bad Request exception.
  ///
  /// Can receive the [response] of the HTTP call, a [message], and [extras]
  /// values that can be used to manage the exception.
  ClientErrorException.badRequest({
    super.title = "Incorrect request",
    super.message = "Parameters sent to server are incorrect",
    super.data,
    super.type = HttpExceptions.badRequest,
  });

  /// The constructor for the cancel exception.
  ClientErrorException.cancelRequest({
    super.title = "Request canceled",
    super.message = "The request was canceled by the user",
    super.data,
    super.type = HttpExceptions.cancelRequest,
  });
}
