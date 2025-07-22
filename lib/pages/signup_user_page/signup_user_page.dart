import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

enum Gender { male, female }

class SignupUserPage extends StatefulWidget {
  const SignupUserPage({super.key});

  @override
  State<SignupUserPage> createState() => _SignupUserPageState();
}

class _SignupUserPageState extends State<SignupUserPage> {
  DateTime? selectedDate;
  Gender? selectedGender;
  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2021, 7, 25),
      firstDate: DateTime(2021),
      lastDate: DateTime(2022),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppTextFieldWidget(hintText: 'First Name'),
              const AppTextFieldWidget(hintText: 'last Name'),
              const AppTextFieldWidget(hintText: 'Email'),
              const AppTextFieldWidget(hintText: 'Phone Number'),
              Row(children: [
                Text(selectedDate != null
                    ? 'Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                    : 'No date selected'),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _selectDate,
                  child: const Text('Select Date'),
                ),
              ]),
              Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Male'),
                    leading: Radio<Gender>(
                      value: Gender.male,
                      groupValue: selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Female'),
                    leading: Radio<Gender>(
                      value: Gender.female,
                      groupValue: selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const AppTextFieldWidget(
                hintText: 'Password',
                obscureText: true,
              ),
              const AppTextFieldWidget(
                  hintText: 'Confirm Password', obscureText: true),
              const SizedBox(height: 32),
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
