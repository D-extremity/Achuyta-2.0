import 'package:acyuta/pages/upload.dart';
import 'package:acyuta/textrecog/textrecog.dart';
import 'package:flutter/material.dart';

class ShcDetail extends StatefulWidget {
  const ShcDetail({super.key});

  @override
  State<ShcDetail> createState() => _ShcDetailState();
}

class _ShcDetailState extends State<ShcDetail> {
  @override
  Widget build(BuildContext context) {
    getRecognisedText();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 68, 121, 96),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "अच्युता",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.memory(uploadedimage)),
      ),
    );
  }
}
