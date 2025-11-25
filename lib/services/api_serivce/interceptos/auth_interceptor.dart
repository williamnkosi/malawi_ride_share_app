import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';

class AuthInterceptor extends Interceptor {
  final Logger _logger = Logger('AuthInterceptor');

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        final idToken = await currentUser.getIdToken();

        options.headers['Authorization'] = 'Bearer $idToken';

        _logger.fine('Added auth token for user: ${currentUser.uid}');
      } else {
        _logger.fine('No authenticated user - request will be unauthenticated');
      }
    } catch (e) {
      _logger.warning('Failed to get auth token: $e');
    }

    handler.next(options);
  }
}
