// Gublygoop – Lesson 2: Transfer Words & Sentence Superpowers
// Includes animation-ready hooks, humor, and dynamic learner connection

import 'package:flutter/material.dart';

class LessonTwoScreen extends StatefulWidget {
  final String userName;
  const LessonTwoScreen({required this.userName, super.key});

  @override
  State<LessonTwoScreen> createState() => _LessonTwoScreenState();
}

class _LessonTwoScreenState extends State<LessonTwoScreen> {
  final List<String> dialogue = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    final name = widget.userName;
    dialogue.addAll([
      '👩‍🏫 Teacher: Welcome back, $name. Ready for your mind to be blown?',
      '👩‍🏫 Teacher: You already know over **1,000 Spanish words** — no joke.',
      '🧠 Fact: Words like "conversation", "attention", and "important" are nearly identical in Spanish.',
      '💡 Rule: -tion becomes -ción, -ity becomes -idad, -ent becomes -ente. Easy, right?',
      '🤹 Visual: conversation → conversación, flexible → flexible, possible → posible.',
      '👩‍🏫 Teacher: Let's try it — say: problema.',
      '👩 Maria: Problema.',
      '👦 Kenji: Problemo?',
      '👩‍🏫 Teacher: Not quite — it's **problema**. Try again.',
      '👦 Kenji: Problema.',
      '👩‍🏫 Teacher: You now — say: Problema.',
      '👩‍🏫 Teacher: Combine it — "Tengo un problema" = I have a problem.',
      '👩 Maria: Tengo un problema.',
      '👦 Kenji: Tengo un problema.',
      '👩‍🏫 Teacher: You — say: Tengo un problema.',
      '👩‍🏫 Teacher: Now try: Importante — it means "important".',
      '👩 Maria: Importante.',
      '👦 Kenji: Importanta?',
      '👩‍🏫 Teacher: Try again — say: Importante.',
      '👦 Kenji: Importante.',
      '👩‍🏫 Teacher: Your turn: Importante.',
      '👩‍🏫 Teacher: Combine: "Es importante" = It's important.',
      '👩 Maria: Es importante.',
      '👦 Kenji: Es importante.',
      '👩‍🏫 Teacher: You now — say: Es importante.',
      '👩‍🏫 Teacher: Another one: Posible = Possible.',
      '👩 Maria: Posible.',
      '👦 Kenji: Posibla?',
      '👩‍🏫 Teacher: One more time — Posible.',
      '👦 Kenji: Posible.',
      '👩‍🏫 Teacher: You now — say: Posible.',
      '👩‍🏫 Teacher: Combine: "Es posible" = It's possible.',
      '👩 Maria: Es posible.',
      '👦 Kenji: Es posible.',
      '👩‍🏫 Teacher: You — say: Es posible.',
      '🎉 AI: $name, you've just spoken 3 full Spanish sentences with almost zero effort.',
      '💥 Now let's go superhero mode — combine with what you know from Lesson 1...',
      'Say: "Quiero una conversación."',
      '👩 Maria: Quiero una conversación.',
      '👦 Kenji: Quiero una conversación.',
      '👩‍🏫 You — say: Quiero una conversación.',
      'Now: "Necesito una decisión."',
      '👩 Maria: Necesito una decisión.',
      '👦 Kenji: Necesito una decisión.',
      '👩‍🏫 You — say: Necesito una decisión.',
      'Now: "Puedo tener una conversación."',
      '👩 Maria: Puedo tener una conversación.',
      '👦 Kenji: Puedo tener una conversación.',
      '👩‍🏫 You — say: Puedo tener una conversación.',
      '🧠 Reminder: This is called Transfer Power — you already knew this, Gublygoop just activated it.',
      '🎭 Roleplay Time: You're at work. What do you say when things are confusing?',
      'Option A: Tengo un problema.',
      'Option B: Necesito una decisión.',
      'Option C: Puedo tener una conversación.',
      '✅ All answers are valid. You just held a conversation.',
      '🎉 Final Flow — You speak:',
      '1. Tengo un problema',
      '2. Es importante',
      '3. Es posible',
      '4. Quiero una conversación',
      '5. Necesito una decisión',
      '6. Puedo hablar',
      '🏁 Closing: $name, you just flexed with words you already knew. That’s power.'
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
      backgroundColor: const Color(0xFFFDF9FF),
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

