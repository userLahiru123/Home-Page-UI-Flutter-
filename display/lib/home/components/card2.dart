import 'dart:ui';
import 'package:display/theme/theme.dart';
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 57,
                      child: Image(
                        image: AssetImage('assets/battery.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '62%',
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
