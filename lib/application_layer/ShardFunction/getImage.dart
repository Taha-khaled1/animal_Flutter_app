import 'dart:io';

import 'package:image_picker/image_picker.dart';

getImage(ImageSource source) async {
  ImagePicker imagePicker = ImagePicker();
  XFile? pickedFile;
  pickedFile = await imagePicker.pickImage(source: source);
  if (pickedFile != null) {
    // contr.image = File(pickedFile.path);
    // print(contr.image);
  }
}
