import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class SignupUserDriverPage extends StatelessWidget {
  const SignupUserDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Are you a Rider or Driver?"),
            const SizedBox(height: 32),
            SizedBox(
                width: double.infinity,
                child: AppOutlineButton(buttonText: 'Rider', onPressed: () {})),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    AppOutlineButton(buttonText: 'Driver', onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
