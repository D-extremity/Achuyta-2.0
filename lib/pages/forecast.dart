import 'dart:ui';

import 'package:acyuta/card/weathercard.dart';
import 'package:acyuta/listcard/temp.dart';
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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent,
        title: Text(
          "अच्युता-मौसम पूर्वानुमान\n${address[0].subLocality}",
          softWrap: true,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Image.asset(
              "assets/background.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.luminosity,
            ),
          ),
          FutureBuilder(
              future: getWeather(),
              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Card(
                    color: Colors.greenAccent,
                    child: Center(
                      // widthFactor: 30,
                      // heightFactor: 30,
                      child: Column(
                        children: [
                          CircularProgressIndicator(
                            strokeAlign: BorderSide.strokeAlignCenter,
                            semanticsValue: "Internet Required Loading..",
                            semanticsLabel: "Internet Required Loading..",
                            color: Colors.black,
                          ),
                          Text("Internet is required ..loading..",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    ),
                  );
                }

                final data = snapshot.data!;
                return ListView.builder(
                    itemCount: 14,
                    itemBuilder: ((context, index) {
                      return WeatherCard(
                          date: data['daily']['time'][index].toString(),
                          maxTemp: data['daily']["temperature_2m_max"][index]
                              .toString(),
                          minTemp: data['daily']['temperature_2m_min'][index]
                              .toString(),
                          rain: data['daily']['precipitation_sum'][index]
                              .toString(),
                          sunrise: data['daily']['sunrise'][index]
                              .toString()
                              .substring(11),
                          sunset: data['daily']['sunset'][index]
                              .toString()
                              .substring(11));
                    }));
              }),
        ],
      ),
    ));
  }
}


// date: data['daily']['time'][index].toString(),
//                           maxTemp: data['daily']["temperature_2m_max"][index].toString(),
//                           minTemp: data['daily']['temperature_2m_min'][index].toString(),
//                           rain: data['daily']['precipitation'][index].toString(),
//                           sunrise: data['daily']['sunrise'][index].toString(),
//                           sunset: data['daily']['sunset'][index].toString()