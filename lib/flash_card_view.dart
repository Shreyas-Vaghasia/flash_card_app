import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlashCardView extends StatelessWidget {
  final String text;

  FlashCardView({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
