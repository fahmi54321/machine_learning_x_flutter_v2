import 'dart:developer';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:machine_learning_x_flutter/features/camera/data/datasources/camera_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';

class CameraDatasourceImpl implements CameraDatasource {
  final ImagePicker imagePicker;

  CameraDatasourceImpl({required this.imagePicker});

  @override
  Future<File?> getFileFromCamera() async {
    try {
      final file = await imagePicker.pickImage(source: ImageSource.camera);

      if (file == null) {
        return null;
      }

      return File(file.path);
    } catch (e) {
      log('error getFileFromCamera: $e');
      throw CameraException('error');
    }
  }
}
