// Gublygoop – Lesson 2: Greetings & How Are You? (with full reinforcement and corrections)

import 'package:flutter/material.dart';

void main() {
  runApp(const GublygoopLessonTwoReinforced());
}

class GublygoopLessonTwoReinforced extends StatelessWidget {
  const GublygoopLessonTwoReinforced({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Gublygoop – Lesson 2'),
          backgroundColor: Colors.teal,
        ),
        body: const LessonTwoReinforcedFlow(),
      ),
    );
  }
}

class LessonTwoReinforcedFlow extends StatefulWidget {
  const LessonTwoReinforcedFlow({super.key});

  @override
  State<LessonTwoReinforcedFlow> createState() => _LessonTwoReinforcedFlowState();
}

class _LessonTwoReinforcedFlowState extends State<LessonTwoReinforcedFlow> {
  final List<String> dialogue = [
    '👩‍🏫 Teacher: Welcome back. Let's start by using what you already know.',
    '👩‍🏫 Teacher: Say: Me llamo Darius.',
    '👩‍🏫 Teacher: Say it again — clearly: Me llamo Darius.',
    '👩‍🏫 Teacher: Now say: ¿Cómo te llamas?',
    '👩‍🏫 Teacher: And say: ¡Mucho gusto!',
    '👩‍🏫 Teacher: Now we begin the new lesson — greetings.',
    '👩‍🏫 Teacher: To say "Hello", we say: Hola. Repeat: Hola.',
    '👩 Maria: Hola.',
    '👩‍🏫 Teacher: Nice, Maria. Everyone say: Hola.',
    '👦 Kenji: Holla?',
    '👩‍🏫 Teacher: Careful Kenji — not "Holla", it's: Hola. Try again.',
    '👦 Kenji: Hola.',
    '👩‍🏫 Teacher: Now you — say: Hola.',
    '👩‍🏫 Teacher: Now ask: ¿Cómo estás?',
    '👩 Maria: ¿Cómo estás?',
    '👦 Kenji: ¿Cómo estas?',
    '👩‍🏫 Teacher: Watch the accent Kenji — it's estás. One more time.',
    '👦 Kenji: ¿Cómo estás?',
    '👩‍🏫 Teacher: Now you — say: ¿Cómo estás?',
    '👩‍🏫 Teacher: To say "I'm well": Estoy bien. Repeat: Estoy bien.',
    '👩 Maria: Estoy bien.',
    '👦 Kenji: Estoy bien.',
    '👩‍🏫 Teacher: Now you — say: Estoy bien.',
    '👩‍🏫 Teacher: To say "I'm not well": Estoy mal. Say it: Estoy mal.',
    '👩 Maria: Estoy mal.',
    '👦 Kenji: Estoy mal.',
    '👩‍🏫 Teacher: Your turn — say: Estoy mal.',
    '👩‍🏫 Teacher: To say "So-so": Más o menos. Repeat: Más o menos.',
    '👩 Maria: Más o menos.',
    '👦 Kenji: Mas o menos?',
    '👩‍🏫 Teacher: Kenji, it's MÁS — stress on the first word. Try again.',
    '👦 Kenji: Más o menos.',
    '👩‍🏫 Teacher: Now you — say: Más o menos.',
    '👩‍🏫 Teacher: Let's use it all together now. Say: Hola. Me llamo Darius. ¿Cómo estás? Estoy bien.',
    '👩‍🏫 Teacher: Again — smoothly: Hola. Me llamo Darius. ¿Cómo estás? Estoy mal.',
    '👩‍🏫 Teacher: One more with variation: Hola. Me llamo Darius. ¿Cómo estás? Más o menos.',
    '👩‍🏫 Teacher: Excellent. You used both old and new phrases — like a real speaker.'
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}

