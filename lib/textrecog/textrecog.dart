// import 'dart:typed_data';

// import 'package:acyuta/getimage/getimage.dart';
// import 'package:acyuta/result/output.dart';
// import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

late final double nitrogenfromCard;
late final double phfromCard;
late final double phosphorusfromCard;
late final double potassiumfromCard;
late final double sulphurfromCard;
late final double zincfromCard;
late final double boronfromCard;
late final double ironfromCard;
late final double manganesefromCard;
late final double copperfromCard;

void getRecognisedText(XFile finalImage) async {
  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  final RecognizedText recognizedText = await textRecognizer
      .processImage(InputImage.fromFilePath(finalImage.path));
  // String text = recognizedText.text;
  // print(text);
  // String scannedText = "";
  int i = 0;
  for (TextBlock block in recognizedText.blocks) {
    for (TextLine line in block.lines) {
      // scannedText = scannedText + line.text + " $i\n";
      if (i == 0) {
        phfromCard = double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 3) {
        nitrogenfromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 4) {
        phosphorusfromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 5) {
        potassiumfromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 6) {
        sulphurfromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 7) {
        zincfromCard = double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 8) {
        boronfromCard = double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 9) {
        ironfromCard = double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 10) {
        manganesefromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      } else if (i == 11) {
        copperfromCard =
            double.parse(line.text.toString().trim().split(' ')[0]);
      }
      i++;
    }
  }

  // print(copperfromCard);
  textRecognizer.close();
}
