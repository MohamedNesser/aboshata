import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

Future uploadImageToAPI(XFile image) async {
  return MultipartFile.fromFile(image.path,
      filename: image.path.split('/').last);
}

// final uploadList = <MultipartFile>[];
// for ( imageFiles in imageFileList!) async{
//     uploadList.add(
//         await MultipartFile.fromFile(
//             imageFiles.path,
//             filename: imageFiles.path.split('/').last,
//             contentType: MediaType('image', 'jpg'),
//         ),
//     );
