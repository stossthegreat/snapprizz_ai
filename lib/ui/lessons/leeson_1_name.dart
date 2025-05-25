// Gublygoop Lesson 1: Power Verbs & Confidence Sentences
// Applies new Gublygoop Laws + Immersive Format + Dynamic Name Usage

import 'package:flutter/material.dart';

void main() {
  runApp(const GublygoopApp());
}

class GublygoopApp extends StatelessWidget {
  const GublygoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NameInputScreen(),
    );
  }
}

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  State<NameInputScreen> createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  final TextEditingController _controller = TextEditingController();

  void _startLesson() {
    final name = _controller.text.trim();
    if (name.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LessonOneScreen(userName: name),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0FF),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '🌟 Hola, amigo!
What’s your name?',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'e.g., Aisha, Leo, Carlos',
              ),
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _startLesson(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startLesson,
              child: const Text('Start Lesson 1'),
            ),
          ],
        ),
      ),
    );
  }
}

class LessonOneScreen extends StatefulWidget {
  final String userName;
  const LessonOneScreen({required this.userName, super.key});

  @override
  State<LessonOneScreen> createState() => _LessonOneScreenState();
}

class _LessonOneScreenState extends State<LessonOneScreen> {
  final List<String> dialogue = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    final name = widget.userName;
    dialogue.addAll([
      '👩‍🏫 Teacher: Welcome, $name. Today, we’ll unlock real Spanish verbs that power thousands of conversations.',
      '👩‍🏫 Teacher: First, the word: "Quiero" — it means "I want." Say it: Quiero.',
      '👩 Maria: Quiero.',
      '👦 Kenji: Kiero?',
      '👩‍🏫 Teacher: Close, Kenji. Say: "Quiero."',
      '👦 Kenji: Quiero.',
      '👩‍🏫 Teacher: Now you, $name — say: Quiero.',
      '👩‍🏫 Teacher: Next — "hablar" means "to speak". Combine: "Quiero hablar" = I want to speak.',
      '👩 Maria: Quiero hablar.',
      '👦 Kenji: Quiero ablar?',
      '👩‍🏫 Teacher: Not ablar — listen: hablar. Try: Quiero hablar.',
      '👦 Kenji: Quiero hablar.',
      '👩‍🏫 Teacher: Your turn, $name — say: Quiero hablar.',
      '👩‍🏫 Teacher: Now try: Quiero comer — "to eat".',
      '👩 Maria: Quiero comer.',
      '👦 Kenji: Quiero comer.',
      '👩‍🏫 Teacher: Say it, $name — Quiero comer.',
      '👩‍🏫 Teacher: Now: Quiero vivir — I want to live.',
      '👩 Maria: Quiero vivir.',
      '👦 Kenji: Quiero vivir.',
      '👩‍🏫 Teacher: You, $name — say: Quiero vivir.',
      '👩‍🏫 Teacher: Let’s learn "Necesito" — it means "I need." Say it: Necesito.',
      '👩 Maria: Necesito.',
      '👦 Kenji: Nesito?',
      '👩‍🏫 Teacher: Careful — say: Ne-ce-si-to. Try again.',
      '👦 Kenji: Necesito.',
      '👩‍🏫 Teacher: Now you — say: Necesito.',
      '👩‍🏫 Teacher: Combine it: Necesito hablar.',
      '👩 Maria: Necesito hablar.',
      '👦 Kenji: Necesito hablar.',
      '👩‍🏫 Teacher: Say it, $name — Necesito hablar.',
      '👩‍🏫 Teacher: Final verb: "Puedo" — means "I can." Say: Puedo.',
      '👩 Maria: Puedo.',
      '👦 Kenji: Puedo.',
      '👩‍🏫 Teacher: You try — say: Puedo.',
      '👩‍🏫 Teacher: Now say: Puedo hablar.',
      '👩 Maria: Puedo hablar.',
      '👦 Kenji: Puedo hablar.',
      '👩‍🏫 Teacher: Say it again, $name — Puedo hablar.',
      '👩‍🏫 Teacher: Final round — full flow:',
      '1. Quiero hablar',
      '2. Quiero comer',
      '3. Necesito vivir',
      '4. Puedo hablar',
      '5. Necesito comer'
    ]);
  }

  void _nextLine() {
    setState(() {
      if (currentIndex < dialogue.length - 1) currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
              onPressed: _nextLine,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
