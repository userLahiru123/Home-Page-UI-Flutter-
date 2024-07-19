import 'dart:ui';

import 'package:display/home/components/card1.dart';
import 'package:display/home/components/card2.dart';
import 'package:display/home/components/card3.dart';
import 'package:display/home/components/card4.dart';
import 'package:display/home/components/card5.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover)),
          child: const Structure()),
    );
  }
}

class Structure extends StatelessWidget {
  const Structure({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card1(),
            // Card(ratio: 1,),
            Card2()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Card3(), Card4()],
        ),
        Card5()
        // Card(ratio: 2)
      ],
    );
  }
}

class Card extends StatelessWidget {
  final int ratio;
  const Card({super.key, required this.ratio});

  @override
  Widget build(BuildContext context) {
    double cardWidth = 170;

    if (ratio == 1) {
      cardWidth = 170;
    } else {
      cardWidth = 340;
    }

    return SizedBox(
      height: 170,
      width: cardWidth,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.white, width: 0.5)),
          ),
        ),
      ),
    );
  }
}
