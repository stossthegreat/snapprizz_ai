// Gublygoop – Lesson 3: Describing People (Reinforced, Dynamic Name)
// Uses <YourName> placeholder; teaches soy, él es, ella es with peer modeling and correction

import 'package:flutter/material.dart';

void main() {
  runApp(const GublygoopLessonThree());
}

class GublygoopLessonThree extends StatelessWidget {
  const GublygoopLessonThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Gublygoop – Lesson 3'),
          backgroundColor: Colors.green,
        ),
        body: const LessonThreeReinforcedFlow(),
      ),
    );
  }
}

class LessonThreeReinforcedFlow extends StatefulWidget {
  const LessonThreeReinforcedFlow({super.key});

  @override
  State<LessonThreeReinforcedFlow> createState() => _LessonThreeReinforcedFlowState();
}

class _LessonThreeReinforcedFlowState extends State<LessonThreeReinforcedFlow> {
  final List<String> dialogue = [
    '👩‍🏫 Teacher: Welcome back. First, let’s recall Lesson 2.',
    '👩‍🏫 Teacher: Say: Hola. Me llamo <YourName>. ¿Cómo estás? Estoy bien.',
    '👩‍🏫 Teacher: Great. Now, new content: To say “I am...”, we use: Soy...',
    '👩‍🏫 Teacher: Soy means “I am”. Pronounce: SOY.',
    '👩‍🏫 Teacher: Example: Soy alto (I am tall).',
    '👩 Maria: Soy alta.',
    '👩‍🏫 Teacher: Maria, correct — alta, since you are female. Everyone repeat: Soy alta.',
    '👦 Kenji: Soy alto.',
    '👩‍🏫 Teacher: Good, Kenji. Everyone repeat: Soy alto.',
    '👩‍🏫 Teacher: Now you — say: Soy <YourName>.',
    '👩‍🏫 Teacher: Next: soy simpático/simpática means “I am nice.” Say: Soy simpático.',
    '👩 Maria: Soy simpática.',
    '👩‍🏫 Teacher: Well done, Maria. Now everyone: Soy simpática.',
    '👦 Kenji: Soy simpático.',
    '👩‍🏫 Teacher: Perfect. Now you — say: Soy simpático.',
    '👩‍🏫 Teacher: To describe someone else: Él es/Ella es...',
    '👩‍🏫 Teacher: Él es means “He is”. Pronounce: ÉL es.',
    '👩‍🏫 Teacher: Ella es means “She is”. Pronounce: E-ya es.',
    '👩‍🏫 Teacher: Example: Él es guapo.',
    '👩 Maria: Él es guapa?',
    '👩‍🏫 Teacher: Correction: guapo for male. Repeat: Él es guapo.',
    '👦 Kenji: Ella es alto?',
    '👩‍🏫 Teacher: Correction: alta for female. Repeat: Ella es alta.',
    '👩‍🏫 Teacher: Now you — say: Él es guapo.',
    '👩‍🏫 Teacher: And say: Ella es simpática.',
    '👩‍🏫 Teacher: Finally, let’s combine everything in one flow.',
    '👩‍🏫 Teacher: Say: Hola. Me llamo <YourName>. Soy simpático. ¿Cómo estás? Estoy bien.',
    '👩‍🏫 Teacher: Now another: Hola. Me llamo <YourName>. Ella es simpática.',
    '👩‍🏫 Teacher: Excellent. You’ve reinforced all phrases from Lessons 1–3.'
  ];

  int currentIndex = 0;

  void nextLine() {
    setState(() {
      if (currentIndex < dialogue.length - 1) currentIndex++;
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
