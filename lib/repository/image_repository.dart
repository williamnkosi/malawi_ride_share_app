import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageRepository {
  final ImagePicker _picker = ImagePicker();

  /// Pick an image from gallery with permission handling
  Future<File?> pickImageFromGallery({
    double maxWidth = 1800,
    double maxHeight = 1800,
    int imageQuality = 80,
  }) async {
    try {
      debugPrint('🖼️ Requesting gallery permission...');

      // Request permission explicitly
      final PermissionStatus galleryStatus = await Permission.photos.request();
      debugPrint('📱 Gallery permission status: $galleryStatus');

      if (galleryStatus == PermissionStatus.granted) {
        debugPrint('✅ Gallery permission granted, opening picker...');
        final XFile? image = await _picker.pickImage(
          source: ImageSource.gallery,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          imageQuality: imageQuality,
        );

        if (image != null) {
          debugPrint('✅ Image picked successfully: ${image.path}');
          return File(image.path);
        } else {
          debugPrint('❌ No image selected');
          return null;
        }
      } else {
        debugPrint('❌ Gallery permission denied: $galleryStatus');
        throw ImagePermissionException(
            'Gallery permission denied', galleryStatus);
      }
    } catch (e) {
      debugPrint('🚨 Error picking image from gallery: $e');
      rethrow;
    }
  }

  /// Take a photo with camera with permission handling
  Future<File?> takePhotoWithCamera({
    double maxWidth = 1800,
    double maxHeight = 1800,
    int imageQuality = 80,
  }) async {
    try {
      debugPrint('📷 Requesting camera permission...');

      // Request permission explicitly
      final PermissionStatus cameraStatus = await Permission.camera.request();
      debugPrint('📱 Camera permission status: $cameraStatus');

      if (cameraStatus == PermissionStatus.granted) {
        debugPrint('✅ Camera permission granted, opening camera...');
        final XFile? image = await _picker.pickImage(
          source: ImageSource.camera,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          imageQuality: imageQuality,
        );

        if (image != null) {
          debugPrint('✅ Photo taken successfully: ${image.path}');
          return File(image.path);
        } else {
          debugPrint('❌ No photo taken');
          return null;
        }
      } else {
        debugPrint('❌ Camera permission denied: $cameraStatus');
        throw ImagePermissionException(
            'Camera permission denied', cameraStatus);
      }
    } catch (e) {
      debugPrint('🚨 Error taking photo: $e');
      rethrow;
    }
  }

  /// Show image picker options dialog
  Future<File?> showImagePickerDialog(
    BuildContext context, {
    double maxWidth = 1800,
    double maxHeight = 1800,
    int imageQuality = 80,
  }) async {
    final result = await showDialog<ImagePickerOption>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Profile Image'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from Gallery'),
                onTap: () =>
                    Navigator.of(context).pop(ImagePickerOption.gallery),
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Take a Photo'),
                onTap: () =>
                    Navigator.of(context).pop(ImagePickerOption.camera),
              ),
            ],
          ),
        );
      },
    );

    if (result == null) return null;

    switch (result) {
      case ImagePickerOption.gallery:
        return await pickImageFromGallery(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          imageQuality: imageQuality,
        );
      case ImagePickerOption.camera:
        return await takePhotoWithCamera(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          imageQuality: imageQuality,
        );
    }
  }

  /// Show permission denied dialog with option to open settings
  static void showPermissionDeniedDialog(
    BuildContext context,
    String permissionType,
  ) {
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
}

/// Enum for image picker options
enum ImagePickerOption {
  gallery,
  camera,
}

/// Custom exception for image permission errors
class ImagePermissionException implements Exception {
  final String message;
  final PermissionStatus status;

  const ImagePermissionException(this.message, this.status);

  @override
  String toString() => 'ImagePermissionException: $message (Status: $status)';
}
