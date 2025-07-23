import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:malawi_ride_share_app/pages/signup_user_page/signup_user_cubit.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class SignupUserPage extends StatefulWidget {
  const SignupUserPage({super.key});

  @override
  State<SignupUserPage> createState() => _SignupUserPageState();
}

class _SignupUserPageState extends State<SignupUserPage> {
  final formKey = GlobalKey<FormBuilderState>();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupUserCubit(
        getIt<ImageRepository>(),
        getIt<AuthRepository>(),
      ),
      child: BlocConsumer<SignupUserCubit, SignupUserState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Signup User'),
            ),
            body: FormBuilder(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Profile Image Picker
                      const ProfileImage(),
                      const SizedBox(height: 16),
                      _buildFormFields(context),
                      const SizedBox(height: 16),
                      _buildDatePicker(context, state),
                      const SizedBox(height: 16),
                      _buildGenderSelection(context, state),
                      const SizedBox(height: 16),
                      _buildPasswordFields(context),
                      const SizedBox(height: 32),
                      SizedBox(
                          width: double.infinity,
                          child: AppOutlineButton(
                              buttonText: 'Continue',
                              onPressed: context
                                  .read<SignupUserCubit>()
                                  .submitSignup)),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupUserCubit, SignupUserState>(
      builder: (context, state) {
        // ✅ Extract profileImage from state
        File? profileImage = state.maybeWhen(
          formUpdate: (_, __, ___, ____, _____, ______, _______, ________,
                  image, _________) =>
              image,
          orElse: () => null,
        );

        return Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () =>
                    context.read<SignupUserCubit>().pickProfileImage(context),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 2,
                    ),
                  ),
                  child: profileImage != null // ✅ Use state value
                      ? ClipOval(
                          child: Image.file(
                            profileImage, // ✅ Use extracted value
                            fit: BoxFit.cover,
                            width: 120, height: 120,
                          ),
                        )
                      : Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey[600],
                        ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                profileImage != null
                    ? 'Tap to change photo'
                    : 'Tap to add profile photo',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget _buildFormFields(BuildContext context) {
  return Column(
    children: [
      // ✅ First Name Field
      FormBuilderTextField(
        name: 'firstName',
        decoration: const InputDecoration(
          labelText: 'First Name',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.person),
        ),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(2),
        ]),
        onChanged: (value) {
          if (value != null) {
            context.read<SignupUserCubit>().updateFormData(firstName: value);
          }
        },
      ),
      const SizedBox(height: 16),

      // ✅ Last Name Field
      FormBuilderTextField(
        name: 'lastName',
        decoration: const InputDecoration(
          labelText: 'Last Name',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.person_outline),
        ),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(2),
        ]),
        onChanged: (value) {
          if (value != null) {
            context.read<SignupUserCubit>().updateFormData(lastName: value);
          }
        },
      ),
      const SizedBox(height: 16),

      // ✅ Email Field
      FormBuilderTextField(
        name: 'email',
        decoration: const InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.email),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.email(),
        ]),
        onChanged: (value) {
          if (value != null) {
            context.read<SignupUserCubit>().updateFormData(email: value);
          }
        },
      ),
      const SizedBox(height: 16),

      // ✅ Phone Number Field
      FormBuilderTextField(
        name: 'phoneNumber',
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.phone),
        ),
        keyboardType: TextInputType.phone,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(10),
        ]),
        onChanged: (value) {
          if (value != null) {
            context.read<SignupUserCubit>().updateFormData(phoneNumber: value);
          }
        },
      ),
      const SizedBox(height: 16),

      // ✅ Password Field
    ],
  );
}

Widget _buildGenderSelection(BuildContext context, SignupUserState state) {
  Gender? selectedGender = state.maybeWhen(
    formUpdate: (_, __, ___, ____, _____, gender, _______, ______, ________,
            __________) =>
        gender,
    orElse: () => null,
  );

  return Column(
    children: [
      RadioListTile<Gender>(
        title: const Text('Male'),
        value: Gender.male,
        groupValue: selectedGender,
        onChanged: (value) =>
            context.read<SignupUserCubit>().updateFormData(gender: value),
      ),
      RadioListTile<Gender>(
        title: const Text('Female'),
        value: Gender.female,
        groupValue: selectedGender,
        onChanged: (value) =>
            context.read<SignupUserCubit>().updateFormData(gender: value),
      ),
    ],
  );
}

Widget _buildDatePicker(BuildContext context, SignupUserState state) {
  DateTime? selectedDate = state.maybeWhen(
    formUpdate: (_, __, ___, ____, dateOfBirth, ______, _______, ________,
            _________, __________) =>
        dateOfBirth,
    orElse: () => null,
  );

  return Row(
    children: [
      Expanded(
        child: Text(
          selectedDate != null
              ? 'Selected Date: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
              : 'No date selected',
        ),
      ),
      const SizedBox(width: 16),
      ElevatedButton(
        onPressed: () =>
            context.read<SignupUserCubit>().selectDateOfBirth(context),
        child: const Text('Select Date'),
      ),
    ],
  );
}

Widget _buildPasswordFields(BuildContext context) {
  return Column(
    children: [
      // ✅ Password Field with FormBuilder
      FormBuilderTextField(
        name: 'password',
        decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(errorText: 'Password is required'),
          FormBuilderValidators.minLength(6,
              errorText: 'Password must be at least 6 characters'),
        ]),
        onChanged: (value) {
          if (value != null) {
            context.read<SignupUserCubit>().updateFormData(password: value);
          }
        },
      ),
      const SizedBox(height: 16),

      // ✅ Confirm Password Field with FormBuilder
      FormBuilderTextField(
        name: 'confirmPassword',
        decoration: const InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Confirm your password',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.lock_outline),
        ),
        obscureText: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(
              errorText: 'Please confirm your password'),
          (value) {
            // ✅ Cross-field validation with FormBuilder
            final formData = FormBuilder.of(context)?.value;
            if (value != formData?['password']) {
              return 'Passwords do not match';
            }
            return null;
          },
        ]),
        onChanged: (value) {
          if (value != null) {
            context
                .read<SignupUserCubit>()
                .updateFormData(confirmPassword: value);
          }
        },
      ),
    ],
  );
}
