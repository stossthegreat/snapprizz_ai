// A simplified Flutter UI representation of Lesson 1: Say My Name
// Uses basic widgets and simulated dialogue flow with learners Maria and Kenji

import 'package:flutter/material.dart';

void main() {
  runApp(const GublygoopLesson());
}

class GublygoopLesson extends StatelessWidget {
  const GublygoopLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Gublygoop – Lesson 1'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const LessonOneFlow(),
      ),
    );
  }
}

class LessonOneFlow extends StatefulWidget {
  const LessonOneFlow({super.key});

  @override
  State<LessonOneFlow> createState() => _LessonOneFlowState();
}

class _LessonOneFlowState extends State<LessonOneFlow> {
  final List<String> dialogue = [
    '👩‍🏫 Teacher: Welcome. Today we learn how to say your name in Spanish.',
    '👩‍🏫 Teacher: In Spanish, we say "Me llamo..." — it means "I call myself."',
    '👩‍🏫 Teacher: Say it now: Me llamo...',
    '👩 Maria: Me llamo Maria.',
    '👩‍🏫 Teacher: Well done Maria. Everyone say: Me llamo Maria.',
    '👦 Kenji: Mi llamo Kenji?',
    '👩‍🏫 Teacher: Not quite Kenji. Say: Me llamo Kenji.',
    '👦 Kenji: Me llamo Kenji.',
    '👩‍🏫 Teacher: Great. Now you — say: Me llamo Darius.',
    '👩‍🏫 Teacher: To ask someone their name, say: ¿Cómo te llamas?',
    '👩 Maria: ¿Cómo te llamas?',
    '👩‍🏫 Teacher: Perfect Maria.',
    '👦 Kenji: ¿Cómo tu llamas?',
    '👩‍🏫 Teacher: Careful Kenji, it's "te llamas" — try again.',
    '👦 Kenji: ¿Cómo te llamas?',
    '👩‍🏫 Teacher: Now you — say: ¿Cómo te llamas?',
    '👩‍🏫 Teacher: When someone replies, you say: Mucho gusto.',
    '👩 Maria: ¡Mucho gusto!',
    '👦 Kenji: ¡Mucho gusto!',
    '👩‍🏫 Teacher: Your turn — say: ¡Mucho gusto!'
  ];

  int currentIndex = 0;

  void nextLine() {
    setState(() {
      if (currentIndex < dialogue.length - 1) {
        currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dialogue[currentIndex],
            style: const TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: nextLine,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
