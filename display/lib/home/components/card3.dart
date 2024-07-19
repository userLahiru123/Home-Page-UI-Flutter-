import 'dart:ui';

import 'package:display/theme/theme.dart';
import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
  const Card3({super.key});

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
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
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Friday",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    Text(
                      '28',
                      style: MyAppTheme.mainTextStyle,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
