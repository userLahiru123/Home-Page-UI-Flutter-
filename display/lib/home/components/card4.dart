import 'dart:ui';

import 'package:display/theme/theme.dart';
import 'package:flutter/material.dart';

class Card4 extends StatefulWidget {
  const Card4({super.key});

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 170,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(color: Colors.white, width: 0.5)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(40.0)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage('assets/google.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "Search",
                          style: MyAppTheme.subTextStyle,
                        ),
                        Text(
                          "Google",
                          style: MyAppTheme.subTextStyle,
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
