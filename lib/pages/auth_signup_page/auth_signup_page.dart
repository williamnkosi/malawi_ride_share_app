import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

class AuthSignupPage extends StatelessWidget {
  const AuthSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppTextFieldWidget(hintText: 'Email'),
              const AppTextFieldWidget(hintText: 'Password'),
              SizedBox(
                  width: double.infinity,
                  child: AppOutlineButton(
                      buttonText: 'Continue', onPressed: () {})),
            ],
          ),
        ),
      ),
    );
  }
}
