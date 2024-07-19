import 'package:flutter/material.dart';

class WeatherColumn extends StatelessWidget {
  final String time;
  final IconData iconData;
  final String temp;

  const WeatherColumn({
    super.key,
    required this.time,
    required this.iconData,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              time,
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(
              temp,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}