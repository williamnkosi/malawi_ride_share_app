import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

void showAppBottomSheet({
  required BuildContext context,
  required RemoteMessage message,
  required Function onAccept,
}) {
  var title = message.data['title'] ?? 'Title';
  var messageBody = message.data['body'] ?? 'Body';
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                messageBody,
              ),
              const SizedBox(height: 8),
              SizedBox(
                  width: double.infinity,
                  child: AppOutlineButton(
                      buttonText: "Accept", onPressed: onAccept)),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child:
                    AppOutlineButton(buttonText: "Decline", onPressed: () {}),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      );
    },
  );
}
