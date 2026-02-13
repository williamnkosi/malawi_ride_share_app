import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';

class SocketAuth {
  final String token;
  final UserType userType;

  SocketAuth({required this.token, required this.userType});

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'userType': userType.name
          .toLowerCase(), // Convert enum to string: 'DRIVER' or 'RIDER'
    };
  }
}
