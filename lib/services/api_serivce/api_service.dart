// lib/services/api_service/api_service.dart
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_constants.dart';
import 'package:malawi_ride_share_app/services/api_serivce/api_service_interface.dart';
import 'package:malawi_ride_share_app/services/exceptions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService implements ApiServiceInterface {
  late Dio _dio;
  final Logger _logger = Logger('ApiService');

  // Constructor
  ApiService() {
    initialize();
  }

  @override
  Future<void> initialize() async {
    try {
      // Get base URL with fallback
      String baseUrl;
      try {
        baseUrl = ApiConstants.baseUrl;
      } catch (e) {
        _logger.warning(
            'Failed to get baseUrl from environment, using fallback: $e');
        baseUrl = 'http://localhost:3000'; // Fallback URL
      }

      _dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ));

      // Add logging interceptor
      _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ));

      // // Add auth interceptor
      // _dio.interceptors.add(_AuthInterceptor());

      // // Add error interceptor
      // _dio.interceptors.add(_ErrorInterceptor());

      _logger.info('API Service initialized with base URL: $baseUrl');
    } catch (e) {
      _logger.severe('Failed to initialize API service: $e');
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> post(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    try {
      _logger.fine('POST request to: $endpoint');
      final response = await _dio.post(endpoint, data: body);
      _logger.fine('POST response: ${response.statusCode}');
      return response.data;
    } on DioException catch (e) {
      _logger.severe('POST error to $endpoint: ${e.message}');
      throw _handleDioError(e);
    }
  }

  @override
  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      _logger.fine('GET request to: $endpoint');
      final response = await _dio.get(endpoint);
      _logger.fine('GET response: ${response.statusCode}');
      return response.data;
    } on DioException catch (e) {
      _logger.severe('GET error to $endpoint: ${e.message}');
      throw _handleDioError(e);
    }
  }

  @override
  Future<Map<String, dynamic>> put(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    try {
      _logger.fine('PUT request to: $endpoint');
      final response = await _dio.put(endpoint, data: body);
      _logger.fine('PUT response: ${response.statusCode}');
      return response.data;
    } on DioException catch (e) {
      _logger.severe('PUT error to $endpoint: ${e.message}');
      throw _handleDioError(e);
    }
  }

  @override
  Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      _logger.fine('DELETE request to: $endpoint');
      final response = await _dio.delete(endpoint);
      _logger.fine('DELETE response: ${response.statusCode}');
      return response.data;
    } on DioException catch (e) {
      _logger.severe('DELETE error to $endpoint: ${e.message}');
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException('Request timeout');
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;
        final message = error.response?.data?['message'] ?? 'Server error';
        return ApiException(message, statusCode);
      case DioExceptionType.cancel:
        return NetworkException('Request cancelled');
      case DioExceptionType.connectionError:
        return NetworkException('No internet connection');
      default:
        return NetworkException('Network error: ${error.message}');
    }
  }

  @override
  void dispose() {
    _dio.close();
    _logger.info('API Service disposed');
  }
}

// // Auth Interceptor
// class _AuthInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     // TODO: Add auth token if available
//     // final token = getAuthToken();
//     // if (token != null) {
//     //   options.headers['Authorization'] = 'Bearer $token';
//     // }
//     super.onRequest(options, handler);
//   }
// }

// // Error Interceptor
// class _ErrorInterceptor extends Interceptor {
//   final Logger _logger = Logger('ErrorInterceptor');

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     _logger.severe('HTTP Error: ${err.response?.statusCode} - ${err.message}');

//     // Handle 401 errors globally
//     if (err.response?.statusCode == 401) {
//       // TODO: Handle unauthorized - redirect to login
//       _logger.warning('Unauthorized access - should redirect to login');
//     }

//     super.onError(err, handler);
//   }
// }
