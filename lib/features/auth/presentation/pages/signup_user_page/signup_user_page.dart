import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/features/auth/data/models/auth_user_data.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/cubit/sign_up_cubit.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

enum Gender {
  male("male"),
  female("female");

  const Gender(this.value);
  final String value;
}

class SignupUserPage extends StatefulWidget {
  const SignupUserPage({super.key});

  @override
  State<SignupUserPage> createState() => _SignupUserPageState();
}

class _SignupUserPageState extends State<SignupUserPage> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
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
          // Navigate to home
          context.go('/home');
        } else if (state.status == SignUpStatus.error) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Error: ${state.error}')));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Driver Signup')),
        body: Stack(
          children: [
            FormBuilder(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      FormBuilderTextField(
                        name: 'firstName',
                        decoration: const InputDecoration(
                          labelText: 'First Name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      FormBuilderTextField(
                        name: 'lastName',
                        decoration: const InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(height: 16),
                      FormBuilderTextField(
                        name: 'phoneNumber',
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(height: 16),
                      FormBuilderDropdown<Gender>(
                        name: 'gender',
                        decoration: const InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(),
                        ),
                        items: Gender.values
                            .map(
                              (g) => DropdownMenuItem(
                                value: g,
                                child: Text(g.name.toLowerCase()),
                              ),
                            )
                            .toList(),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(height: 16),
                      FormBuilderDateTimePicker(
                        name: 'dateOfBirth',
                        decoration: const InputDecoration(
                          labelText: 'Date of Birth',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                        inputType: InputType.date,
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(height: 16),
                      FormBuilderDropdown<UserType>(
                        name: 'userType',
                        decoration: const InputDecoration(
                          labelText: 'Account Type',
                          border: OutlineInputBorder(),
                        ),
                        initialValue: UserType.driver,
                        items: UserType.values
                            .map(
                              (type) => DropdownMenuItem(
                                value: type,
                                child: Text(type.name.toUpperCase()),
                              ),
                            )
                            .toList(),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(height: 32),
                      BlocBuilder<SignUpCubit, SignUpState>(
                        builder: (context, state) {
                          return SizedBox(
                            width: double.infinity,
                            child: AppOutlineButton(
                              buttonText: 'Sign Up',
                              onPressed: state.status == SignUpStatus.loading
                                  ? null
                                  : () => _handleSignup(
                                      userCredential: context
                                          .read<SignUpCubit>()
                                          .state
                                          .userCredential!,
                                    ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                if (state.status == SignUpStatus.loading) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.5),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                            strokeWidth: 3.0,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Creating your account...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _handleSignup({required UserCredential userCredential}) {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }

    formKey.currentState?.save();
    final formData = formKey.currentState?.value ?? {};

    context.read<SignUpCubit>().updateUserData(
      firstName: formData['firstName'] as String,
      lastName: formData['lastName'] as String,
      phoneNumber: formData['phoneNumber'] as String,
      gender: formData['gender'] as Gender,
      dateOfBirth: formData['dateOfBirth'] as DateTime,
      userCredential: userCredential,
      userType: formData['userType'] as UserType,
    );
  }
}
