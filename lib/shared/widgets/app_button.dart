import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final bool isDisabled;
  const AppOutlineButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.isDisabled = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Your onPressed action
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black), // Black text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        disabledBackgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.2),
      ),
      child: Text(buttonText),
    );
  }
}
