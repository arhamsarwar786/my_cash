import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// /  Pick An Image

final picker = ImagePicker();

String? cnicFrontImgBase64;
String? cnicBackImgBase64;
String? selfieImgBase64;

Uint8List? cnicFrontImgFile;
Uint8List? cnicBackImgFile;
Uint8List? selfieImgFile;

// String? base64Img;

showMyDialogue(context, type) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: ListView(
            shrinkWrap: true,
            children: [
              SimpleDialogOption(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Camera'),
                  ),
                  onPressed: () async {
                    selectOrTakePhoto(
                        context: context,
                        imageSource: ImageSource.camera,
                        type: type);
                  }),
              Divider(
                height: 5,
              ),
              SimpleDialogOption(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Gallery'),
                  ),
                  onPressed: () {
                    selectOrTakePhoto(
                        context: context,
                        imageSource: ImageSource.gallery,
                        type: type);
                  }),
            ],
          ),
        );
      });
}

/// Method for sending a selected or taken photo to the DialogBox
Future selectOrTakePhoto(
    {@required context, @required imageSource, type}) async {
  var image = await picker.pickImage(source: imageSource, imageQuality: 10);
  Navigator.pop(context);
  if (type == 'front') {
    cnicFrontImgBase64 = await encodeImageBase64(image!);
    cnicFrontImgFile = await decodeImageBase64(cnicFrontImgBase64!);
  } else if (type == 'back') {
    cnicBackImgBase64 = await encodeImageBase64(image!);
    cnicBackImgFile = await decodeImageBase64(cnicBackImgBase64!);
  } else if (type == 'selfie') {
    selfieImgBase64 = await encodeImageBase64(image!);
    selfieImgFile = await decodeImageBase64(selfieImgBase64!);
  }
}

Future encodeImageBase64(XFile image) async {
  var bytes = await image.readAsBytes();
  var imageBase64 = base64Encode(bytes);
  return imageBase64;
}

Future decodeImageBase64(String image) async {
  var imageFile = base64Decode(image);
  return imageFile;
}
