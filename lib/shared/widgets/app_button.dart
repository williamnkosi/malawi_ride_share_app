import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const AppOutlineButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

class AppElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const AppElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
