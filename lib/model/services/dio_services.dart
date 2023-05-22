import 'package:api_tools_test/core/utils/connection_utils.dart';
import 'package:api_tools_test/core/utils/custom_exception.dart';
import 'package:dio/dio.dart';

class DioService {
  DioService(this.dio) {
    headerOption = Options(
      headers: dio.options.headers,
      sendTimeout: dio.options.sendTimeout,
      receiveTimeout: dio.options.receiveTimeout,
    );
  }
  final Dio dio;
  late final Options headerOption;

  /// HTTP GET
  Future<T> get<T>(APIServiceRequest<T> request) async {
    final hasInternet = await ConnectionUtil.hasInternetConnection();
    if (!hasInternet) {
      throw RemoteException(
          RemoteException.noInternet, 'No internet connection');
    }
    try {
      final response = await dio.get(
        dio.options.baseUrl + request.path,
        options: headerOption,
        queryParameters: request.queryParams,
      );

      return request.parseResponse(response.data);
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionError:
          throw RemoteException(
              RemoteException.badCertification, "Connection error");
        case DioErrorType.badCertificate:
          throw RemoteException(
              RemoteException.badCertification, "Bad Certification error");
        case DioErrorType.connectionTimeout:
          throw RemoteException(
              RemoteException.connectTimeout, 'Connection timeout');
        case DioErrorType.sendTimeout:
          throw RemoteException(RemoteException.sendTimeout, 'Send timeout');
        case DioErrorType.receiveTimeout:
          throw RemoteException(
              RemoteException.receiveTimeout, 'Receive timeout');
        case DioErrorType.badResponse:
          throw RemoteException(
            RemoteException.responseError,
            '${e.response?.data?['error'] ?? ''}',
            httpStatusCode: e.response?.statusCode,
          );
        case DioErrorType.cancel:
          throw RemoteException(
              RemoteException.cancelRequest, 'Request cancel');
        case DioErrorType.unknown:
          throw RemoteException(
              RemoteException.other, 'Dio error unknown: ${e.error}');
      }
    } catch (e) {
      throw RemoteException(RemoteException.other, e.toString());
    }
  }

  /// HTTP POST
  Future<T> post<T>(
    APIServiceRequest<T> request, {
    bool isDelete = false,
  }) async {
    final hasInternet = await ConnectionUtil.hasInternetConnection();
    if (!hasInternet) {
      throw RemoteException(
          RemoteException.noInternet, 'No internet connection');
    }
    try {
      final response = !isDelete
          ? await dio.post(
              dio.options.baseUrl + request.path,
              options: headerOption,
              data: request.dataBody,
              queryParameters: request.queryParams,
            )
          : await dio.delete(
              dio.options.baseUrl + request.path,
              options: headerOption,
              data: request.dataBody,
              queryParameters: request.queryParams,
            );
      return request.parseResponse(response.data);
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectionError:
          throw RemoteException(
              RemoteException.badCertification, "Connection error");
        case DioErrorType.badCertificate:
          throw RemoteException(
              RemoteException.badCertification, "Bad Certification error");
        case DioErrorType.connectionTimeout:
          throw RemoteException(
              RemoteException.connectTimeout, 'Connection timeout');
        case DioErrorType.sendTimeout:
          throw RemoteException(RemoteException.sendTimeout, 'Send timeout');
        case DioErrorType.receiveTimeout:
          throw RemoteException(
              RemoteException.receiveTimeout, 'Receive timeout');
        case DioErrorType.badResponse:
          throw RemoteException(
            RemoteException.responseError,
            '${e.response?.data?['error'] ?? ''}',
            httpStatusCode: e.response?.statusCode,
          );
        case DioErrorType.cancel:
          throw RemoteException(
              RemoteException.cancelRequest, 'Request cancel');
        case DioErrorType.unknown:
          throw RemoteException(
              RemoteException.other, 'Dio error unknown: ${e.error}');
      }
    } catch (e) {
      throw RemoteException(RemoteException.other, e.toString());
    }
  }
}

class APIServiceRequest<T> {
  final String path;
  final Map<String, dynamic>? header;
  final Map<String, dynamic>? queryParams;
  final Map<String, dynamic>? dataBody;
  T Function(dynamic response) parseResponse;

  APIServiceRequest(this.path, this.parseResponse,
      {this.header, this.queryParams, this.dataBody});
}

class BaseResponse<T> {
  int status;
  String message;
  T? data;

  BaseResponse({
    required this.status,
    required this.message,
    this.data,
  });

  factory BaseResponse.fromJson({
    required Map<String, dynamic> json,
    Function(Map<String, dynamic>)? dataBuilder,
  }) {
    return BaseResponse<T>(
      status: json['statusCode'],
      message: json['message'],
      data: dataBuilder != null ? dataBuilder(json['data']) : null,
    );
  }
}
