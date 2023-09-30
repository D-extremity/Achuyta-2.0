// import 'dart:convert';

import 'package:acyuta/listcard/temp.dart';
import 'package:acyuta/pages/forecast.dart';
// import 'package:acyuta/location/geolocation.dart';
import 'package:acyuta/pages/upload.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final Uri _url = Uri.parse('https://farmer.gov.in/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

const titleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20);

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.28,
              width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: const Color.fromARGB(255, 174, 248, 212),
                    child: Image.asset(
                      "assets/1.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: const Color.fromARGB(255, 174, 248, 212),
                    child: Image.asset(
                      "assets/2.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: const Color.fromARGB(255, 174, 248, 212),
                    child: Image.asset(
                      "assets/3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Upload(),
                  ),
                );
              },
              child: const SizedBox(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 174, 248, 212),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Your Personalized Crop Sow Analysis",
                        style: titleStyle,
                        softWrap: true,
                      ),
                      Text(
                        "आपका व्यक्तिकृत फसल बोना विश्लेषण",
                        style: titleStyle,
                        softWrap: true,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                _launchUrl();
              },
              child: const SizedBox(
                // height: size.height * 0.1,
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 174, 248, 212),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Find Government Schemes",
                        style: titleStyle,
                        softWrap: true,
                      ),
                      Text(
                        "सरकारी योजनाएं खोजें",
                        style: titleStyle,
                        softWrap: true,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ForeCast())),
              child: const SizedBox(
                // height: size.height * 0.1,
                width: double.infinity,
                child: Temp(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              // height: size.height * 0.1,
              width: double.infinity,
              child: Card(
                color: Color.fromARGB(255, 174, 248, 212),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How To Use This App",
                      style: titleStyle,
                      softWrap: true,
                    ),
                    Text(
                      "इस ऐप का उपयोग कैसे करें",
                      style: titleStyle,
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              // height: size.height * 0.1,
              width: double.infinity,
              child: Card(
                color: Color.fromARGB(255, 174, 248, 212),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "About App and Testimonials",
                      softWrap: true,
                      style: titleStyle,
                    ),
                    Text(
                      " ऐप के बारे में और प्रशंसापत्र",
                      softWrap: true,
                      style: titleStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
