import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/shared/dtos/create_user_dto/create_user_dto.dart';

part 'signup_user_state.dart';
part 'signup_user_cubit.freezed.dart';

enum Gender {
  male("male"),
  female("female");

  const Gender(this.value);
  final String value;
}

class SignupUserCubit extends Cubit<SignupUserState> {
  final ImageRepository _imageRepository;
  final FirebaseAuthRepositoryImp _authRepository;
  final AuthBloc _authBloc;

  File? _profileImage;
  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';
  DateTime? _dateOfBirth;
  Gender? _gender;

  SignupUserCubit(this._imageRepository, this._authRepository, this._authBloc)
      : super(const SignupUserState.initial());

  void updateFormData({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    String? password,
    String? confirmPassword,
    DateTime? dateOfBirth,
    Gender? gender,
  }) {
    if (firstName != null) _firstName = firstName;
    if (lastName != null) _lastName = lastName;
    if (email != null) _email = email;
    if (phoneNumber != null) _phoneNumber = phoneNumber;
    if (password != null) _password = password;
    if (confirmPassword != null) _confirmPassword = confirmPassword;
    if (dateOfBirth != null) _dateOfBirth = dateOfBirth;
    if (gender != null) _gender = gender;

    _emitFormState();
  }

  void _emitFormState() {
    emit(SignupUserState.formUpdate(
      firstName: _firstName,
      lastName: _lastName,
      email: _email,
      phoneNumber: _phoneNumber,
      password: _password,
      confirmPassword: _confirmPassword,
      dateOfBirth: _dateOfBirth,
      gender: _gender,
      profileImage: _profileImage,
      isFormValid: _isFormValid(),
    ));
  }

  bool _isFormValid() {
    return _firstName.isNotEmpty &&
        _lastName.isNotEmpty &&
        _email.contains('@') &&
        _phoneNumber.isNotEmpty &&
        _password.length >= 6 &&
        _password == _confirmPassword &&
        _dateOfBirth != null &&
        _gender != null;
  }

  void resetForm() {
    _firstName = '';
    _lastName = '';
    _email = '';
    _phoneNumber = '';
    _password = '';
    _confirmPassword = '';
    _dateOfBirth = null;
    _gender = null;
    _profileImage = null;
    emit(const SignupUserState.initial());
  }

  Future<void> pickProfileImage(BuildContext context) async {
    try {
      emit(const SignupUserState.imageLoading());

      final File? image = await _imageRepository.showImagePickerDialog(
        context,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 85,
      );

      if (image != null) {
        _profileImage = image;
        debugPrint('✅ Profile image selected: ${image.path}');
      }

      _emitFormState();
    } on ImagePermissionException catch (e) {
      emit(SignupUserState.permissionError(
        'Permission denied for ${e.message.contains('Camera') ? 'camera' : 'gallery'} access. '
        'Please enable permissions in Settings.',
      ));
    } catch (e) {
      debugPrint('❌ Error picking image: $e');
      emit(SignupUserState.error('Failed to pick image: $e'));
    }
  }

  Future<void> selectDateOfBirth(BuildContext context) async {
    try {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _dateOfBirth ??
            DateTime.now().subtract(const Duration(days: 365 * 18)),
        firstDate: DateTime(1950),
        lastDate: DateTime.now().subtract(const Duration(days: 365 * 13)),
        helpText: 'Select your date of birth',
      );

      if (pickedDate != null) {
        _dateOfBirth = pickedDate;
        debugPrint('✅ Date selected: ${pickedDate.toString()}');
        _emitFormState();
      }
    } catch (e) {
      debugPrint('❌ Error selecting date: $e');
      emit(SignupUserState.error('Failed to select date: $e'));
    }
  }

  Future<void> submitSignup() async {
    try {
      emit(const SignupUserState.loading());

      // Validate the complete form
      if (!_isFormValid()) {
        emit(const SignupUserState.error('Please fill all fields correctly'));
        return;
      }

      // Create Firebase user
      final userCredential = await _authRepository.signUpUserEmailAndPassword(
        email: _email,
        password: _password,
      );

      // Create user data
      final createUserDto = CreateUserDto(
        firebaseId: userCredential.user!.uid,
        firstName: _firstName,
        lastName: _lastName,
        phoneNumber: _phoneNumber,
        email: _email,
        gender: _gender!.value,
        dateOfBirth: _dateOfBirth!.toIso8601String().split('T')[0],
      );
      await _authRepository.createUserInDatabase(createUserDto: createUserDto);

      _authBloc.add(
        AuthEvent.authEventSetAuthenticated(
          userCredential: userCredential,
          userType: UserType.driver, // or determine based on your logic
        ),
      );

      emit(const SignupUserState.success('Account created successfully!'));
    } catch (e) {
      debugPrint('❌ Signup error: $e');
      emit(SignupUserState.error('Signup failed: $e'));
    }
  }
}
