import 'package:acyuta/card/crop.dart';
import 'package:acyuta/pages/manualinput.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

Map<String, String> imagePreference = {
  "bajra": "assets/bajra.jpg",
  "urad": "assets/urad.jpeg",
  "wheat": "assets/wheat.jpg",
  "mustard":"assets/mustardfinal.jpg",
  "rice": "assets/rice.jpg",
  "maize":"assets/cornmaize.jpg",
  "tomato": "assets/tomato.jpg",
  "jowar": "assets/jowar.jpg",
  "sugarcane":"assets/sc.jpg",
  "potato": "assets/potato.jpg",
  "null":"assets/null.png"
};

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 121, 96),
      appBar: AppBar(leading: const BackButton(color: Colors.black,),
        backgroundColor: Colors.greenAccent,
        
        title: const Text(
          "अच्युता-विश्लेषण के अनुसार,\nफसलों की प्राथमिकता",
          softWrap: true,
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: resultList.length,
          itemBuilder: (context, index) {
            return CardCrop(
              cropName: resultList[index],
              cropImage:imagePreference[resultList[index]].toString()
            );
          }),
    );
  }
}
