part of '../network.dart';

class ResponseMessage {
  static const String SUCCESS = "Success! Operation completed successfully.";
  static const String CREATED = "Success! Resource created successfully.";
  static const String ACCEPTED = "Request accepted. Processing underway.";
  static const String NON_AUTHORITATIVE_INFORMATION =
      "Non-authoritative information.";
  static const String NO_CONTENT =
      "Success! Operation completed, but no content available.";
  static const String RESET_CONTENT = "Reset content.";
  static const String PARTIAL_CONTENT = "Partial content returned.";
  static const String MULTI_STATUS = "Multi-Status.";
  static const String MULTIPLE_CHOICES = "Multiple choices available.";
  static const String MOVED_PERMANENTLY = "Resource moved permanently.";
  static const String FOUND = "Resource found.";
  static const String SEE_OTHER = "See other resource.";
  static const String NOT_MODIFIED = "Resource not modified.";
  static const String USE_PROXY = "Use proxy.";
  static const String TEMPORARY_REDIRECT = "Temporary redirect.";
  static const String PERMANENT_REDIRECT = "Permanent redirect.";
  static const String BAD_REQUEST =
      "Bad request. Please check your input and try again.";
  static const String UNAUTHORIZED = "Unauthorized. Please log in to continue.";
  static const String PAYMENT_REQUIRED = "Payment required.";
  static const String FORBIDDEN =
      "Access forbidden. Please contact support for assistance.";
  static const String NOT_FOUND =
      "Resource not found. Please check the URL and try again.";
  static const String METHOD_NOT_ALLOWED =
      "Method not allowed for the requested resource.";
  static const String NOT_ACCEPTABLE =
      "Resource not acceptable according to the accept headers.";
  static const String PROXY_AUTHENTICATION_REQUIRED =
      "Proxy authentication required.";
  static const String REQUEST_TIMEOUT =
      "Request timed out. Please try again later.";
  static const String CONFLICT =
      "Conflict occurred while processing the request.";
  static const String GONE = "Requested resource is no longer available.";
  static const String LENGTH_REQUIRED = "Content length required.";
  static const String PRECONDITION_FAILED = "Precondition failed.";
  static const String PAYLOAD_TOO_LARGE = "Request payload too large.";
  static const String URI_TOO_LONG = "Request URI too long.";
  static const String UNSUPPORTED_MEDIA_TYPE = "Unsupported media type.";
  static const String RANGE_NOT_SATISFIABLE =
      "Requested range not satisfiable.";
  static const String EXPECTATION_FAILED = "Expectation failed.";
  static const String UNPROCESSABLE_ENTITY = "Unprocessable entity.";
  static const String LOCKED = "Resource is locked.";
  static const String FAILED_DEPENDENCY = "Failed dependency.";
  static const String UPGRADE_REQUIRED = "Upgrade required.";
  static const String PRECONDITION_REQUIRED = "Precondition required.";
  static const String TOO_MANY_REQUESTS = "Too many requests.";
  static const String REQUEST_HEADER_FIELDS_TOO_LARGE =
      "Request header fields too large.";
  static const String UNAVAILABLE_FOR_LEGAL_REASONS =
      "Resource unavailable for legal reasons.";
  static const String INTERNAL_SERVER_ERROR =
      "Oops! Something went wrong on our end. Please try again later.";
  static const String NOT_IMPLEMENTED = "Functionality not implemented.";
  static const String BAD_GATEWAY = "Bad gateway.";
  static const String SERVICE_UNAVAILABLE =
      "Service unavailable. Please try again later.";
  static const String GATEWAY_TIMEOUT = "Gateway timeout.";
  static const String HTTP_VERSION_NOT_SUPPORTED =
      "HTTP version not supported.";
  static const String VARIANT_ALSO_NEGOTIATES = "Variant also negotiates.";
  static const String INSUFFICIENT_STORAGE = "Insufficient storage.";
  static const String LOOP_DETECTED = "Loop detected.";
  static const String NOT_EXTENDED = "Not extended.";
  static const String NETWORK_AUTHENTICATION_REQUIRED =
      "Network authentication required.";
  static const String CONNECT_TIMEOUT =
      "Request timed out. Please check your internet connection and try again.";
  static const String CANCEL = "Request canceled.";
  static const String RECEIVE_TIMEOUT =
      "Data retrieval timed out. Please try again later.";
  static const String SEND_TIMEOUT =
      "Sending data timed out. Please try again later.";
  static const String CACHE_ERROR =
      "Error while fetching cached data. Please try again later.";
  static const String NO_INTERNET_CONNECTION =
      "No internet connection. Please connect to the internet and try again.";
  static const String DEFAULT =
      "An unexpected error occurred. Please try again.";
}
