import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

class SignupUserPage extends StatelessWidget {
  const SignupUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppTextFieldWidget(hintText: 'First Name'),
            const AppTextFieldWidget(hintText: 'last Name'),
            const AppTextFieldWidget(hintText: 'Email'),
            const AppTextFieldWidget(
              hintText: 'Password',
              obscureText: true,
            ),
            const AppTextFieldWidget(
                hintText: 'Confirm Password', obscureText: true),
            const SizedBox(height: 32),
            SizedBox(
                width: double.infinity,
                child:
                    AppOutlineButton(buttonText: 'Continue', onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
