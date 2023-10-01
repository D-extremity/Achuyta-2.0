import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String sunrise;
  final String sunset;
  final String  maxTemp;
  final String minTemp;
  final String date;
  final String rain;

  const WeatherCard(
      {super.key,
      required this.date,
      required this.maxTemp,
      required this.minTemp,
      required this.rain,
      required this.sunrise,
      required this.sunset});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        // height: size.height * 0.2,
        width: double.infinity,
        child: Card(
          color: const Color.fromARGB(255, 141, 220, 144),
          child: ListTile(
            leading: rain=="0.0"?const CircleAvatar(
              backgroundImage: AssetImage("assets/sun.jpg"),
              radius: 40,
            ) :const CircleAvatar(
              backgroundImage: AssetImage("assets/rain.jpg"),
              radius: 40,
            ),
            title: Text(
              "अधिकतम तापमान: $maxTemp C  \nन्यूनतम तापमान: $minTemp C",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "सूर्योदय: $sunrise AM\nसूर्यास्त: $sunset PM \nबारिश: $rain \nदिनांक: $date",
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
