// Gublygoop – Lesson 1: Power Verbs (Quiero, Necesito, Puedo)
// Follows Michel-style: explain > peer repeat > correction > user repeat
// Uses <YourName> as placeholder

import 'package:flutter/material.dart';

void main() {
  runApp(const GublygoopLessonOne());
}

class GublygoopLessonOne extends StatelessWidget {
  const GublygoopLessonOne({super.key});

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
        body: const LessonOnePowerVerbsFlow(),
      ),
    );
  }
}

class LessonOnePowerVerbsFlow extends StatefulWidget {
  const LessonOnePowerVerbsFlow({super.key});

  @override
  State<LessonOnePowerVerbsFlow> createState() => _LessonOnePowerVerbsFlowState();
}

class _LessonOnePowerVerbsFlowState extends State<LessonOnePowerVerbsFlow> {
  final List<String> dialogue = [
    '👩‍🏫 Teacher: Welcome. Don’t memorize. Don’t repeat in your mind. Just listen, understand, and speak.',
    '👩‍🏫 Teacher: First word: Quiero — it means "I want". Say it: Quiero.',
    '👩 Maria: Quiero.',
    '👦 Kenji: Kiero?',
    '👩‍🏫 Teacher: Almost, Kenji — soft "eh": Quiero. Try again.',
    '👦 Kenji: Quiero.',
    '👩‍🏫 Teacher: Now you — say: Quiero.',
    '👩‍🏫 Teacher: "To speak" is hablar. Combine: Quiero hablar.',
    '👩 Maria: Quiero hablar.',
    '👦 Kenji: Quiero ablar?',
    '👩‍🏫 Teacher: Not ablar — it starts with soft "h": hablar. Say: Quiero hablar.',
    '👦 Kenji: Quiero hablar.',
    '👩‍🏫 Teacher: Now you — say: Quiero hablar.',
    '👩‍🏫 Teacher: Next verb: Comer — to eat. Say: Quiero comer.',
    '👩 Maria: Quiero comer.',
    '👦 Kenji: Quiero comer.',
    '👩‍🏫 Teacher: Now you — say: Quiero comer.',
    '👩‍🏫 Teacher: Vivir — to live. Try: Quiero vivir.',
    '👩 Maria: Quiero vivir.',
    '👦 Kenji: Quiero vivir.',
    '👩‍🏫 Teacher: Now you — say: Quiero vivir.',
    '👩‍🏫 Teacher: New word: Necesito — it means "I need". Say it: Necesito.',
    '👩 Maria: Necesito.',
    '👦 Kenji: Nesito?',
    '👩‍🏫 Teacher: Careful — it’s Ne-ce-si-to. Try again.',
    '👦 Kenji: Necesito.',
    '👩‍🏫 Teacher: Now you — say: Necesito.',
    '👩‍🏫 Teacher: Combine: Necesito hablar.',
    '👩 Maria: Necesito hablar.',
    '👦 Kenji: Necesito hablar.',
    '👩‍🏫 Teacher: Now you — say: Necesito hablar.',
    '👩‍🏫 Teacher: Try: Necesito comer.',
    '👩 Maria: Necesito comer.',
    '👦 Kenji: Necesito comer.',
    '👩‍🏫 Teacher: Now you — say: Necesito comer.',
    '👩‍🏫 Teacher: Final power verb: Puedo — it means "I can." Say: Puedo.',
    '👩 Maria: Puedo.',
    '👦 Kenji: Puedo.',
    '👩‍🏫 Teacher: Now you — say: Puedo.',
    '👩‍🏫 Teacher: Say: Puedo hablar.',
    '👩 Maria: Puedo hablar.',
    '👦 Kenji: Puedo hablar.',
    '👩‍🏫 Teacher: You — say: Puedo hablar.',
    '👩‍🏫 Teacher: Puedo comer.',
    '👩 Maria: Puedo comer.',
    '👦 Kenji: Puedo comer.',
    '👩‍🏫 Teacher: Your turn — say: Puedo comer.',
    '👩‍🏫 Teacher: One final round. Say each of these clearly:',
    '👩‍🏫 Teacher: 1. Quiero hablar',
    '👩‍🏫 Teacher: 2. Quiero comer',
    '👩‍🏫 Teacher: 3. Necesito vivir',
    '👩‍🏫 Teacher: 4. Puedo hablar',
    '👩‍🏫 Teacher: 5. Necesito comer'
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
