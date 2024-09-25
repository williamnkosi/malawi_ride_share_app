import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

class SignupDriverPage extends StatelessWidget {
  const SignupDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Personal Information'),
                const AppTextFieldWidget(hintText: 'First Name'),
                const AppTextFieldWidget(hintText: 'Last Name'),
                const AppTextFieldWidget(hintText: 'Email'),
                const AppTextFieldWidget(hintText: 'Phone Number'),
                const AppTextFieldWidget(hintText: 'Driver License Number'),
                const AppTextFieldWidget(
                  hintText: 'Password',
                  obscureText: true,
                ),
                const AppTextFieldWidget(
                    hintText: 'Confirm Password', obscureText: true),
                const SizedBox(height: 64),
                const Text('Vihicle Information'),
                const AppTextFieldWidget(hintText: 'Car Make'),
                const AppTextFieldWidget(hintText: 'Car Model'),
                const AppTextFieldWidget(hintText: 'Car Year'),
                const AppTextFieldWidget(hintText: 'Car Plate Number'),
                const AppTextFieldWidget(hintText: 'Car VIN Number'),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                    width: double.infinity,
                    child: AppOutlineButton(
                        buttonText: 'Continue', onPressed: () {})),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
