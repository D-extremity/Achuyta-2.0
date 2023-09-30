import 'dart:ui';

import 'package:flutter/material.dart';

class ForeCast extends StatefulWidget {
  const ForeCast({super.key});

  @override
  State<ForeCast> createState() => _ForeCastState();
}

class _ForeCastState extends State<ForeCast> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(leading: const BackButton(color: Colors.black,),
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "अच्युता-मौसम पूर्वानुमान",
          softWrap: true,
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: Image.asset(
              "assets/background.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.luminosity,
              
            ),
          )
        ],
      ),
    ));
  }
}
