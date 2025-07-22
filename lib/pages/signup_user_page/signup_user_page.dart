import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
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
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickProfileImage() async {
    await _showImagePickerDialog();
  }

  Future<void> _showImagePickerDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Profile Image'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImageFromGallery();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImageFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImageFromGallery() async {
    try {
      print('🖼️ Requesting gallery permission...');

      // Request permission explicitly
      final PermissionStatus galleryStatus = await Permission.photos.request();
      print('📱 Gallery permission status: $galleryStatus');

      if (galleryStatus == PermissionStatus.granted) {
        print('✅ Gallery permission granted, opening picker...');
        final XFile? image = await _picker.pickImage(
          source: ImageSource.gallery,
          maxWidth: 1800,
          maxHeight: 1800,
          imageQuality: 80,
        );

        if (image != null) {
          print('✅ Image picked successfully: ${image.path}');
          setState(() {
            _profileImage = File(image.path);
          });
        } else {
          print('❌ No image selected');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No image selected')),
          );
        }
      } else {
        print('❌ Gallery permission denied: $galleryStatus');
        _showPermissionDeniedDialog('gallery access');
      }
    } catch (e) {
      print('🚨 Error picking image from gallery: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error accessing gallery: $e')),
      );
    }
  }

  Future<void> _pickImageFromCamera() async {
    try {
      print('📷 Requesting camera permission...');

      // Request permission explicitly
      final PermissionStatus cameraStatus = await Permission.camera.request();
      print('📱 Camera permission status: $cameraStatus');

      if (cameraStatus == PermissionStatus.granted) {
        print('✅ Camera permission granted, opening camera...');
        final XFile? image = await _picker.pickImage(
          source: ImageSource.camera,
          maxWidth: 1800,
          maxHeight: 1800,
          imageQuality: 80,
        );

        if (image != null) {
          print('✅ Photo taken successfully: ${image.path}');
          setState(() {
            _profileImage = File(image.path);
          });
        } else {
          print('❌ No photo taken');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No photo taken')),
          );
        }
      } else {
        print('❌ Camera permission denied: $cameraStatus');
        _showPermissionDeniedDialog('camera access');
      }
    } catch (e) {
      print('🚨 Error taking photo: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error accessing camera: $e')),
      );
    }
  }

  void _showPermissionDeniedDialog(String permissionType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Permission Required'),
          content: Text(
            'This app needs $permissionType permission to function properly. '
            'Please grant the permission in your device settings.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
              child: const Text('Open Settings'),
            ),
          ],
        );
      },
    );
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
