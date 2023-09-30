import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:acyuta/location/geolocation.dart';
import 'package:acyuta/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

late List<Placemark> address;
Future getWeather() async {
  await getLocation();
  double? latitude = locationData.latitude;
  double? longitude = locationData.longitude;
  // if (latitude == null || longitude == null) {
  //   return "Could not get loction";
  // }
  address = await placemarkFromCoordinates(latitude!, longitude!);

  // print(address[0].street);
  final result = await http.get(
    Uri.parse(
      "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,precipitation_sum,snowfall_sum,precipitation_hours,windspeed_10m_max&timezone=auto&forecast_days=16",
    ),
  );
  final data = jsonDecode(result.body);

  // print(locationData.latitude);

  return data;
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getWeather(),
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Card(
            color: Colors.greenAccent,
            child: Center(
                // widthFactor: 30,
                // heightFactor: 30,
                child: CircularProgressIndicator(
              strokeAlign: BorderSide.strokeAlignCenter,
              semanticsValue: "Internet Required Loading..",
              semanticsLabel: "Internet Required Loading..",
              color: Colors.black,
            )),
          );
        }
        final data = snapshot.data;
        // ignore: prefer_interpolation_to_compose_strings
        final todayTemp =
            "${data['daily']['time'][0]} : ${data['daily']['temperature_2m_max'][0]} C";
        final add = "${address[0].subLocality}";
        return Card(
          color: const Color.fromARGB(255, 174, 248, 212),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                add,
                softWrap: true,
                style: titleStyle,
              ),
              Text(
                todayTemp,
                softWrap: true,
                style: titleStyle,
              ),
              const Text(
                "मौसम रिपोर्ट की जाँच करें 🔍",
                style: titleStyle,
                softWrap: true,
              )
            ],
          ),
        );
      },
    );
  }
}
