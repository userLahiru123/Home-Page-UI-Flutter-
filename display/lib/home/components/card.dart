import 'dart:ui';
import 'package:flutter/material.dart';

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