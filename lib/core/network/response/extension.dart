part of '../network.dart';

extension NetworkResponseExtension on NetworkResponse {
  Failure getMessage() {
    switch (this) {
      case NetworkResponse.SUCCESS:
        return Failure(ResponseCode.SUCCESS, ResponseMessage.SUCCESS);
      case NetworkResponse.CREATED:
        return Failure(ResponseCode.CREATED, ResponseMessage.CREATED);
      case NetworkResponse.ACCEPTED:
        return Failure(ResponseCode.ACCEPTED, ResponseMessage.ACCEPTED);
      case NetworkResponse.NON_AUTHORITATIVE_INFORMATION:
        return Failure(ResponseCode.NON_AUTHORITATIVE_INFORMATION,
            ResponseMessage.NON_AUTHORITATIVE_INFORMATION);
      case NetworkResponse.NO_CONTENT:
        return Failure(ResponseCode.NO_CONTENT, ResponseMessage.NO_CONTENT);
      case NetworkResponse.RESET_CONTENT:
        return Failure(
            ResponseCode.RESET_CONTENT, ResponseMessage.RESET_CONTENT);
      case NetworkResponse.PARTIAL_CONTENT:
        return Failure(
            ResponseCode.PARTIAL_CONTENT, ResponseMessage.PARTIAL_CONTENT);
      case NetworkResponse.MULTI_STATUS:
        return Failure(ResponseCode.MULTI_STATUS, ResponseMessage.MULTI_STATUS);
      case NetworkResponse.MULTIPLE_CHOICES:
        return Failure(
            ResponseCode.MULTIPLE_CHOICES, ResponseMessage.MULTIPLE_CHOICES);
      case NetworkResponse.MOVED_PERMANENTLY:
        return Failure(
            ResponseCode.MOVED_PERMANENTLY, ResponseMessage.MOVED_PERMANENTLY);
      case NetworkResponse.FOUND:
        return Failure(ResponseCode.FOUND, ResponseMessage.FOUND);
      case NetworkResponse.SEE_OTHER:
        return Failure(ResponseCode.SEE_OTHER, ResponseMessage.SEE_OTHER);
      case NetworkResponse.NOT_MODIFIED:
        return Failure(ResponseCode.NOT_MODIFIED, ResponseMessage.NOT_MODIFIED);
      case NetworkResponse.USE_PROXY:
        return Failure(ResponseCode.USE_PROXY, ResponseMessage.USE_PROXY);
      case NetworkResponse.TEMPORARY_REDIRECT:
        return Failure(ResponseCode.TEMPORARY_REDIRECT,
            ResponseMessage.TEMPORARY_REDIRECT);
      case NetworkResponse.PERMANENT_REDIRECT:
        return Failure(ResponseCode.PERMANENT_REDIRECT,
            ResponseMessage.PERMANENT_REDIRECT);
      case NetworkResponse.BAD_REQUEST:
        return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);
      case NetworkResponse.UNAUTHORIZED:
        return Failure(ResponseCode.UNAUTHORIZED, ResponseMessage.UNAUTHORIZED);
      case NetworkResponse.PAYMENT_REQUIRED:
        return Failure(
            ResponseCode.PAYMENT_REQUIRED, ResponseMessage.PAYMENT_REQUIRED);
      case NetworkResponse.FORBIDDEN:
        return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);
      case NetworkResponse.NOT_FOUND:
        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);
      case NetworkResponse.METHOD_NOT_ALLOWED:
        return Failure(ResponseCode.METHOD_NOT_ALLOWED,
            ResponseMessage.METHOD_NOT_ALLOWED);
      case NetworkResponse.NOT_ACCEPTABLE:
        return Failure(
            ResponseCode.NOT_ACCEPTABLE, ResponseMessage.NOT_ACCEPTABLE);
      case NetworkResponse.PROXY_AUTHENTICATION_REQUIRED:
        return Failure(ResponseCode.PROXY_AUTHENTICATION_REQUIRED,
            ResponseMessage.PROXY_AUTHENTICATION_REQUIRED);
      case NetworkResponse.REQUEST_TIMEOUT:
        return Failure(
            ResponseCode.REQUEST_TIMEOUT, ResponseMessage.REQUEST_TIMEOUT);
      case NetworkResponse.CONFLICT:
        return Failure(ResponseCode.CONFLICT, ResponseMessage.CONFLICT);
      case NetworkResponse.GONE:
        return Failure(ResponseCode.GONE, ResponseMessage.GONE);
      case NetworkResponse.LENGTH_REQUIRED:
        return Failure(
            ResponseCode.LENGTH_REQUIRED, ResponseMessage.LENGTH_REQUIRED);
      case NetworkResponse.PRECONDITION_FAILED:
        return Failure(ResponseCode.PRECONDITION_FAILED,
            ResponseMessage.PRECONDITION_FAILED);
      case NetworkResponse.PAYLOAD_TOO_LARGE:
        return Failure(
            ResponseCode.PAYLOAD_TOO_LARGE, ResponseMessage.PAYLOAD_TOO_LARGE);
      case NetworkResponse.URI_TOO_LONG:
        return Failure(ResponseCode.URI_TOO_LONG, ResponseMessage.URI_TOO_LONG);
      case NetworkResponse.UNSUPPORTED_MEDIA_TYPE:
        return Failure(ResponseCode.UNSUPPORTED_MEDIA_TYPE,
            ResponseMessage.UNSUPPORTED_MEDIA_TYPE);
      case NetworkResponse.RANGE_NOT_SATISFIABLE:
        return Failure(ResponseCode.RANGE_NOT_SATISFIABLE,
            ResponseMessage.RANGE_NOT_SATISFIABLE);
      case NetworkResponse.EXPECTATION_FAILED:
        return Failure(ResponseCode.EXPECTATION_FAILED,
            ResponseMessage.EXPECTATION_FAILED);
      case NetworkResponse.UNPROCESSABLE_ENTITY:
        return Failure(ResponseCode.UNPROCESSABLE_ENTITY,
            ResponseMessage.UNPROCESSABLE_ENTITY);
      case NetworkResponse.LOCKED:
        return Failure(ResponseCode.LOCKED, ResponseMessage.LOCKED);
      case NetworkResponse.FAILED_DEPENDENCY:
        return Failure(
            ResponseCode.FAILED_DEPENDENCY, ResponseMessage.FAILED_DEPENDENCY);
      case NetworkResponse.UPGRADE_REQUIRED:
        return Failure(
            ResponseCode.UPGRADE_REQUIRED, ResponseMessage.UPGRADE_REQUIRED);
      case NetworkResponse.PRECONDITION_REQUIRED:
        return Failure(ResponseCode.PRECONDITION_REQUIRED,
            ResponseMessage.PRECONDITION_REQUIRED);
      case NetworkResponse.TOO_MANY_REQUESTS:
        return Failure(
            ResponseCode.TOO_MANY_REQUESTS, ResponseMessage.TOO_MANY_REQUESTS);
      case NetworkResponse.REQUEST_HEADER_FIELDS_TOO_LARGE:
        return Failure(ResponseCode.REQUEST_HEADER_FIELDS_TOO_LARGE,
            ResponseMessage.REQUEST_HEADER_FIELDS_TOO_LARGE);
      case NetworkResponse.UNAVAILABLE_FOR_LEGAL_REASONS:
        return Failure(ResponseCode.UNAVAILABLE_FOR_LEGAL_REASONS,
            ResponseMessage.UNAVAILABLE_FOR_LEGAL_REASONS);
      case NetworkResponse.INTERNAL_SERVER_ERROR:
        return Failure(ResponseCode.INTERNAL_SERVER_ERROR,
            ResponseMessage.INTERNAL_SERVER_ERROR);
      case NetworkResponse.NOT_IMPLEMENTED:
        return Failure(
            ResponseCode.NOT_IMPLEMENTED, ResponseMessage.NOT_IMPLEMENTED);
      case NetworkResponse.BAD_GATEWAY:
        return Failure(ResponseCode.BAD_GATEWAY, ResponseMessage.BAD_GATEWAY);
      case NetworkResponse.SERVICE_UNAVAILABLE:
        return Failure(ResponseCode.SERVICE_UNAVAILABLE,
            ResponseMessage.SERVICE_UNAVAILABLE);
      case NetworkResponse.GATEWAY_TIMEOUT:
        return Failure(
            ResponseCode.GATEWAY_TIMEOUT, ResponseMessage.GATEWAY_TIMEOUT);
      case NetworkResponse.HTTP_VERSION_NOT_SUPPORTED:
        return Failure(ResponseCode.HTTP_VERSION_NOT_SUPPORTED,
            ResponseMessage.HTTP_VERSION_NOT_SUPPORTED);
      case NetworkResponse.VARIANT_ALSO_NEGOTIATES:
        return Failure(ResponseCode.VARIANT_ALSO_NEGOTIATES,
            ResponseMessage.VARIANT_ALSO_NEGOTIATES);
      case NetworkResponse.INSUFFICIENT_STORAGE:
        return Failure(ResponseCode.INSUFFICIENT_STORAGE,
            ResponseMessage.INSUFFICIENT_STORAGE);
      case NetworkResponse.LOOP_DETECTED:
        return Failure(
            ResponseCode.LOOP_DETECTED, ResponseMessage.LOOP_DETECTED);
      case NetworkResponse.NOT_EXTENDED:
        return Failure(ResponseCode.NOT_EXTENDED, ResponseMessage.NOT_EXTENDED);
      case NetworkResponse.NETWORK_AUTHENTICATION_REQUIRED:
        return Failure(ResponseCode.NETWORK_AUTHENTICATION_REQUIRED,
            ResponseMessage.NETWORK_AUTHENTICATION_REQUIRED);
      case NetworkResponse.CONNECT_TIMEOUT:
        return Failure(
            ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);
      case NetworkResponse.CANCEL:
        return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);
      case NetworkResponse.RECEIVE_TIMEOUT:
        return Failure(
            ResponseCode.RECEIVE_TIMEOUT, ResponseMessage.RECEIVE_TIMEOUT);
      case NetworkResponse.SEND_TIMEOUT:
        return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);
      case NetworkResponse.CACHE_ERROR:
        return Failure(ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR);
      case NetworkResponse.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION,
            ResponseMessage.NO_INTERNET_CONNECTION);
      case NetworkResponse.DEFAULT:
        return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);
    }
  }
}
