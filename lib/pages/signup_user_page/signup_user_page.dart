import 'dart:io';

import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/repository/image_repository.dart';
import 'package:malawi_ride_share_app/services/locator.dart';
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

  File? _profileImage; // ✅ Add profile image variable
  late final ImageRepository _imageRepository;

  @override
  void initState() {
    super.initState();
    _imageRepository = getIt<ImageRepository>();
  }

  Future<void> _pickProfileImage() async {
    try {
      final File? image = await _imageRepository.showImagePickerDialog(
        context,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          _profileImage = image;
        });
      }
    } on ImagePermissionException catch (e) {
      // Handle permission denied
      if (mounted) {
        ImageRepository.showPermissionDeniedDialog(
          context,
          e.message.contains('Camera') ? 'camera access' : 'gallery access',
        );
      }
    } catch (e) {
      // Handle other errors
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

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
              // Profile Image Picker
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: _pickProfileImage,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.grey[400]!,
                            width: 2,
                          ),
                        ),
                        child: _profileImage != null
                            ? ClipOval(
                                child: Image.file(
                                  _profileImage!,
                                  fit: BoxFit.cover,
                                  width: 120,
                                  height: 120,
                                ),
                              )
                            : Icon(
                                Icons.camera_alt,
                                size: 40,
                                color: Colors.grey[600],
                              ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tap to add profile photo',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
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
