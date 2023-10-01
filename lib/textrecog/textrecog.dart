import 'dart:typed_data';

import 'package:acyuta/getimage/getimage.dart';
// import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

void getRecognisedText() async {
  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  final RecognizedText recognizedText = await textRecognizer
      .processImage(InputImage.fromFilePath(finalImage!.path));
  String text = recognizedText.text;
  print(text);
}
