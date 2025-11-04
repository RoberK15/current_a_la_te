import 'package:a_la_te_2/core/network/endpoints.dart';
import 'package:a_la_te_2/core/network/network_service.dart';
import 'package:dio/dio.dart';

class DioClient implements NetworkService {
  DioClient(this._dio){
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json;
  }

  final Dio _dio;

  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
    final response = await _dio.get<T>(
      url,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<T>> post<T>(  
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
    final response = await _dio.post<T>(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
    } catch (e) {
      rethrow;
    }
  }
  @override
  Future<Response<T>> put<T>(  
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
    final response = await _dio.put<T>(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<T>> delete<T>(  
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
    final response = await _dio.delete<T>(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
    return response;
    } catch (e) {
      rethrow;
    }
  }
}
