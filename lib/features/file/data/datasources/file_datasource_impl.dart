import 'dart:developer';

import 'package:image_picker/image_picker.dart';
import 'package:machine_learning_x_flutter/features/file/data/datasources/file_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';

class FileDatasourceImpl implements FileDatasource {
  final ImagePicker imagePicker;

  FileDatasourceImpl({required this.imagePicker});

  @override
  Future<String?> getFileFromGallery() async {
    try {
      final file = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (file == null) {
        return null;
      }

      return file.path;
    } catch (e) {
      log('error getFileFromGallery: $e');
      throw FilePickerException('error');
    }
  }
}
