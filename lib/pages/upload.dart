// import 'package:acyuta/pages/manualinput.dart';
import 'package:acyuta/pages/manualinput.dart';
import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

const titleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20);

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 121, 96),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "अच्युता",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/uploadimage.png"),
          const SizedBox(
            height: 30,
          ),
          const Card(color: Colors.greenAccent,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Upload Your Soil Health Card",
                    style: titleStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "अपना मृदा स्वास्थ्य कार्ड अपलोड करें",
                    style: titleStyle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ManualInput(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Upload Soil Health Card Manually ",
                        style: titleStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "अपना मृदा स्वास्थ्य कार्ड लिखकर अपलोड करें",
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
