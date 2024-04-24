part of '../network.dart';

class ResponseCode {
  static const int SUCCESS = 200;
  static const int CREATED = 201;
  static const int ACCEPTED = 202;
  static const int NON_AUTHORITATIVE_INFORMATION = 203;
  static const int NO_CONTENT = 204;
  static const int RESET_CONTENT = 205;
  static const int PARTIAL_CONTENT = 206;
  static const int MULTI_STATUS = 207;
  static const int MULTIPLE_CHOICES = 300;
  static const int MOVED_PERMANENTLY = 301;
  static const int FOUND = 302;
  static const int SEE_OTHER = 303;
  static const int NOT_MODIFIED = 304;
  static const int USE_PROXY = 305;
  static const int TEMPORARY_REDIRECT = 307;
  static const int PERMANENT_REDIRECT = 308;
  static const int BAD_REQUEST = 400;
  static const int UNAUTHORIZED = 401;
  static const int PAYMENT_REQUIRED = 402;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int METHOD_NOT_ALLOWED = 405;
  static const int NOT_ACCEPTABLE = 406;
  static const int PROXY_AUTHENTICATION_REQUIRED = 407;
  static const int REQUEST_TIMEOUT = 408;
  static const int CONFLICT = 409;
  static const int GONE = 410;
  static const int LENGTH_REQUIRED = 411;
  static const int PRECONDITION_FAILED = 412;
  static const int PAYLOAD_TOO_LARGE = 413;
  static const int URI_TOO_LONG = 414;
  static const int UNSUPPORTED_MEDIA_TYPE = 415;
  static const int RANGE_NOT_SATISFIABLE = 416;
  static const int EXPECTATION_FAILED = 417;
  static const int UNPROCESSABLE_ENTITY = 422;
  static const int LOCKED = 423;
  static const int FAILED_DEPENDENCY = 424;
  static const int UPGRADE_REQUIRED = 426;
  static const int PRECONDITION_REQUIRED = 428;
  static const int TOO_MANY_REQUESTS = 429;
  static const int REQUEST_HEADER_FIELDS_TOO_LARGE = 431;
  static const int UNAVAILABLE_FOR_LEGAL_REASONS = 451;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int NOT_IMPLEMENTED = 501;
  static const int BAD_GATEWAY = 502;
  static const int SERVICE_UNAVAILABLE = 503;
  static const int GATEWAY_TIMEOUT = 504;
  static const int HTTP_VERSION_NOT_SUPPORTED = 505;
  static const int VARIANT_ALSO_NEGOTIATES = 506;
  static const int INSUFFICIENT_STORAGE = 507;
  static const int LOOP_DETECTED = 508;
  static const int NOT_EXTENDED = 510;
  static const int NETWORK_AUTHENTICATION_REQUIRED = 511;
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}
