import 'package:bloc/bloc.dart';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_user_state.dart';
part 'signup_user_cubit.freezed.dart';

class SignupUserCubit extends Cubit<SignupUserState> {
  SignupUserCubit() : super(const SignupUserState.initial());

  // Add your methods and logic here
}
