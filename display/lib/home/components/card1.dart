import 'dart:ui';
import 'package:display/theme/theme.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
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
              padding: EdgeInsets.only(left: 15, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Quarter",
                    style: MyAppTheme.mainTextStyle,
                  ),
                  Text(
                    "Past",
                    style: MyAppTheme.mainTextStyle,
                  ),
                  Text(
                    "Four",
                    style: MyAppTheme.mainTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
