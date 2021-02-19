import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'flash_card.dart';
import 'flash_card_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _flashcards = [
    FlashCard(question: 'Who created Flutter?', answer: 'Google'),
    FlashCard(
        question: 'What is Flutter?',
        answer:
            'SDK to build beautiful IOS, Android, Web & Desktop Native Apps'),
    FlashCard(
        question: 'Which programing language is used by Flutter',
        answer: 'Dart'),
    FlashCard(
        question: 'Who created Dart programing language?',
        answer: 'Lars Bak and Kasper Lund'),
    FlashCard(
        question: 'Flutter for Web and Desktop available in stable version',
        answer: 'No'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  back: FlashCardView(
                    text: _flashcards[currentIndex].question,
                  ),
                  front: FlashCardView(
                    text: _flashcards[currentIndex].answer,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlineButton.icon(
                    onPressed: showNextCard,
                    icon: Icon(Icons.chevron_left),
                    label: Text('prev'),
                  ),
                  OutlineButton.icon(
                    onPressed: showprevCard,
                    icon: Icon(Icons.chevron_right),
                    label: Text('next'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showNextCard() {
    setState(() {
      currentIndex =
          (currentIndex + 1 < _flashcards.length) ? currentIndex + 1 : 0;
    });
  }

  void showprevCard() {
    setState(() {
      currentIndex =
          (currentIndex - 1 >= 0) ? currentIndex - 1 : _flashcards.length - 1;
    });
  }
}
