import 'dart:convert';

import 'package:api_tools_test/model/services/dio_services.dart';
import 'package:api_tools_test/core/utils/connection_utils.dart';
import 'package:api_tools_test/core/utils/custom_exception.dart';
import 'package:http/http.dart' as http;

class HttpService {
  HttpService.privateConstructor();
  static final _instance = HttpService.privateConstructor();
  factory HttpService.instance() => _instance;

  /// HTTP GET
  Future<T> get<T>(APIServiceRequest<T> request) async {
    final hasInternet = await ConnectionUtil.hasInternetConnection();
    if (!hasInternet) {
      throw RemoteException(
          RemoteException.noInternet, 'No internet connection');
    }
    try {
      final index = request.path.indexOf("/");
      final host = request.path.substring(0, index);
      final path = request.path.substring(index);
      final response = await http.get(
        Uri.https(
          host,
          path,
          request.queryParams,
        ),
        headers: request.header as Map<String, String>,
      );
      return request.parseResponse(jsonDecode(response.body));
    } on Error catch (e) {
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
      final index = request.path.indexOf("/");
      final host = request.path.substring(0, index);
      final path = request.path.substring(index);
      final response = !isDelete
          ? await http.post(
              Uri.https(
                host,
                path,
                request.queryParams,
              ),
              headers: request.header as Map<String, String>,
              body: request.dataBody,
            )
          : await http.delete(
              Uri.https(
                host,
                path,
                request.queryParams,
              ),
              headers: request.header as Map<String, String>,
              body: request.dataBody,
            );
      return request.parseResponse(jsonDecode(response.body));
    } on Error catch (e) {
      throw RemoteException(RemoteException.other, e.toString());
    }
  }
}
