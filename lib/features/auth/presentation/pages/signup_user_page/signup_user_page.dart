import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
import 'package:malawi_ride_share_app/shared/dtos/create_user_dto/create_user_dto.dart';
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
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    FormBuilderTextField(
                      name: 'password',
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                      ]),
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
                              child: Text(g.name.toUpperCase()),
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
                    SizedBox(
                      width: double.infinity,
                      child: AppOutlineButton(
                        buttonText: 'Sign Up',
                        onPressed: _isLoading ? null : _handleSignup,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_isLoading)
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
            ),
        ],
      ),
    );
  }

  Future<void> _handleSignup() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }

    formKey.currentState?.save();
    final formData = formKey.currentState?.value ?? {};

    setState(() => _isLoading = true);

    try {
      final authRepository = getIt<FirebaseAuthRepositoryImp>();
      final authBloc = context.read<AuthBloc>();

      // Create Firebase user
      final userCredential = await authRepository.signUpUserEmailAndPassword(
        email: formData['email'],
        password: formData['password'],
      );

      // Create user profile in database
      await authRepository.createUserInDatabase(
        createUserDto: CreateUserDto(
          firebaseId: userCredential.user!.uid,
          firstName: formData['firstName'],
          lastName: formData['lastName'],
          phoneNumber: formData['phoneNumber'],
          email: formData['email'],
          gender: (formData['gender'] as Gender).value,
          dateOfBirth: (formData['dateOfBirth'] as DateTime)
              .toIso8601String()
              .split('T')[0],
        ),
      );

      // Update auth state
      authBloc.add(
        AuthEvent.authEventSetAuthenticated(
          userCredential: userCredential,
          userType: formData['userType'] as UserType,
        ),
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account created successfully!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Signup failed: $e')));
      }
      setState(() => _isLoading = false);
    }
  }
}
