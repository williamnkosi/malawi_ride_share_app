import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';

import 'package:malawi_ride_share_app/features/auth/presentation/bloc/cubit/sign_up_cubit.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/signup_user_page.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/pages/signup_user_page/sigup_user_creds.dart';
import 'package:malawi_ride_share_app/services/locator.dart';

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpCubit(signUpUserUseCase: getIt(), authRepositoryImp: getIt()),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state.status == SignUpStatus.userDataUpdated) {
            // Sync global auth state after signup completes
            context.read<AuthBloc>().add(
              AuthEvent.authSuccess(
                userCredential: state.userCredential!,
                userType: state.userType!,
                authUserData: state.authUserData,
              ),
            );
            // // Navigate to home
            // context.go('/home');
          } else if (state.status == SignUpStatus.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Error: ${state.error}')));
          }
        },
        child: BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) {
            switch (state.status) {
              case SignUpStatus.initial:
                return const SignUpUserCreds();
              case SignUpStatus.loading:
                return const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                );
              case SignUpStatus.success:
                return const SignupUserPage();
              case SignUpStatus.error:
                return Scaffold(
                  body: Center(child: Text('Error: ${state.error}')),
                );
              case SignUpStatus.userDataUpdated:
                throw Container(); // This should be replaced with actual handling code.
            }
          },
        ),
      ),
    );
  }
}
