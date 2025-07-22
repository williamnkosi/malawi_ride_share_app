import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/app_blocs/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/shared/router/router.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              const SizedBox(height: 8),
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
                      buttonText: 'Rider Login',
                      onPressed: () {
                        // Validate the form
                        if (_formKey.currentState?.validate() ?? false) {
                          // If valid, save the form state and access the values
                          _formKey.currentState?.save();
                          final formData = _formKey.currentState?.value;
                          context.read<AuthBloc>().add(AuthRiderEventLogin(
                                email: formData!['Email'],
                                password: formData['password'],
                              ));
                          //context.push(AppRoutes.homePage);
                        } else {}
                      })),
              const SizedBox(height: 8),
              SizedBox(
                  width: double.infinity,
                  child: AppOutlineButton(
                      buttonText: 'Driver Login',
                      onPressed: () {
                        // Validate the form
                        if (_formKey.currentState?.validate() ?? false) {
                          // If valid, save the form state and access the values
                          _formKey.currentState?.save();
                          final formData = _formKey.currentState?.value;
                          context.read<AuthBloc>().add(AuthDriverEventLogin(
                                email: formData!['Email'],
                                password: formData['password'],
                              ));
                          // context.push(AppRoutes.homePage);
                        } else {}
                      })),
              const SizedBox(height: 8),
              SizedBox(
                  width: double.infinity,
                  child: AppOutlineButton(
                      buttonText: 'Sign Up',
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.authEventSetToUnauthenticated());
                        context.push(AppRoutes.authSignUpPage);
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
