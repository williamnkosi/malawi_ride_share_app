import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/shared/router/router.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppTextFieldWidget(hintText: 'Email'),
            const AppTextFieldWidget(hintText: 'Password'),
            const SizedBox(height: 32),
            SizedBox(
                width: double.infinity,
                child: AppOutlineButton(buttonText: 'Login', onPressed: () {})),
            const SizedBox(height: 8),
            SizedBox(
                width: double.infinity,
                child: AppOutlineButton(
                    buttonText: 'Sign Up',
                    onPressed: () {
                      context.push(AppRoutes.authSignUpPage);
                    })),
          ],
        ),
      ),
    );
  }
}
