import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class AuthSignupPage extends StatelessWidget {
  AuthSignupPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormBuilderTextField(
                  name: 'Email',
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                FormBuilderTextField(
                  name: 'password',
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(4),
                  ]),
                ),
                SizedBox(
                    width: double.infinity,
                    child: AppOutlineButton(
                        buttonText: 'Sign Up',
                        onPressed: () {
                          // Validate the form
                          if (_formKey.currentState?.validate() ?? false) {
                            // If valid, save the form state and access the values
                            _formKey.currentState?.save();
                            final formData = _formKey.currentState?.value;
                            context.read<AuthBloc>().add(AuthEventSignUp(
                                email: formData!['Email'],
                                password: formData['password']));
                            print("Form is valid! Data: $formData");
                          } else {
                            print("Form is invalid!");
                          }
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
