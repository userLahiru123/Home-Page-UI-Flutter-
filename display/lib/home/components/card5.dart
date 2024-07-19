import 'dart:ui';

import 'package:display/home/components/weather_column.dart';
import 'package:flutter/material.dart';

class Card5 extends StatefulWidget {
  const Card5({super.key});

  @override
  State<Card5> createState() => _Card5State();
}

class _Card5State extends State<Card5> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 340,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.white, width: 0.5)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kanpur",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "24°",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cloudy",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "H:30° L:19°",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    WeatherColumn(
                        time: "7PM", iconData: Icons.cloud, temp: "24°"),
                    WeatherColumn(
                        time: "8PM", iconData: Icons.cloud, temp: "22°"),
                    WeatherColumn(
                        time: "9PM", iconData: Icons.nights_stay, temp: "21°"),
                    WeatherColumn(
                        time: "10PM", iconData: Icons.dark_mode, temp: "21°"),
                    WeatherColumn(
                        time: "11PM", iconData: Icons.cloud, temp: "20°"),
                    WeatherColumn(
                        time: "12PM", iconData: Icons.cloud, temp: "19°"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}