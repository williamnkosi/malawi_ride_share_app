import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/cubit/sign_up_cubit.dart';
import 'package:malawi_ride_share_app/config/routes/router.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class SignUpUserCreds extends StatefulWidget {
  const SignUpUserCreds({super.key});

  @override
  State<SignUpUserCreds> createState() => _SignUpUserCredsState();
}

class _SignUpUserCredsState extends State<SignUpUserCreds> {
  final _formKey = GlobalKey<FormBuilderState>();

  bool _hidePassword = true;
  bool _hideConfirmPassword = true;
  UserType _selectedUserType = UserType.rider;

  void _submitForm(BuildContext context) {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    _formKey.currentState?.save();
    final formData = _formKey.currentState?.value;

    context.read<SignUpCubit>().signUp(
      email: formData!['email'] as String,
      password: formData['password'] as String,
      userType: _selectedUserType,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Sign Up')),
          body: FormBuilder(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FormBuilderTextField(
                    name: 'email',
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  FormBuilderTextField(
                    name: 'password',
                    obscureText: _hidePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() => _hidePassword = !_hidePassword);
                        },
                        icon: Icon(
                          _hidePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(6),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  FormBuilderTextField(
                    name: 'confirmPassword',
                    obscureText: _hideConfirmPassword,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hideConfirmPassword = !_hideConfirmPassword;
                          });
                        },
                        icon: Icon(
                          _hideConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    validator: (valueCandidate) {
                      final value = valueCandidate?.trim() ?? '';
                      final passwordValue =
                          _formKey.currentState?.fields['password']?.value
                              as String?;

                      if (value.isEmpty) {
                        return 'Please confirm your password';
                      }

                      if (value != (passwordValue ?? '')) {
                        return 'Passwords do not match';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text('I am a:'),
                      const SizedBox(width: 16),
                      ChoiceChip(
                        label: const Text('Rider'),
                        selected: _selectedUserType == UserType.rider,
                        onSelected: (_) =>
                            setState(() => _selectedUserType = UserType.rider),
                      ),
                      const SizedBox(width: 8),
                      ChoiceChip(
                        label: const Text('Driver'),
                        selected: _selectedUserType == UserType.driver,
                        onSelected: (_) =>
                            setState(() => _selectedUserType = UserType.driver),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Builder(
                    builder: (builderContext) {
                      return SizedBox(
                        width: double.infinity,
                        child: AppOutlineButton(
                          buttonText: 'Create Account',
                          onPressed: () => _submitForm(builderContext),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
