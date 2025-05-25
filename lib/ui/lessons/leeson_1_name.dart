import 'package:flutter/material.dart';
import 'dart:async';

class SpanishLesson1 extends StatefulWidget {
  final String userName; // Pass user's name at runtime
  const SpanishLesson1({super.key, required this.userName});

  @override
  State<SpanishLesson1> createState() => _SpanishLesson1State();
}

class _SpanishLesson1State extends State<SpanishLesson1> {
  int _currentStep = 0;
  bool _showMaria = false;
  bool _showKenji = false;
  String _lastTeacherLine = "";
  final List<Map<String, dynamic>> _script = [
    {
      "teacher": "We don’t memorize. We understand. Ready?",
      "character": null,
      "delay": 2.0,
    },
    {
      "teacher": "Maria, say ‘I want’... ‘Yo quiero’.",
      "character": "Maria",
      "response": "Yo quiero",
      "delay": 1.5,
    },
    {
      "teacher": "Kenji, say it like you’re ordering a Ferrari.",
      "character": "Kenji",
      "response": "¡Yo quiero!",
      "delay": 1.5,
    },
    {
      "teacher": "${widget.userName}, now YOU. Imagine demanding tacos.",
      "character": null,
      "delay": 3.0, // Pause for mental repetition
    },
  ];

  @override
  void initState() {
    super.initState();
    _playLesson();
  }

  void _playLesson() async {
    for (var step in _script) {
      setState(() {
        _lastTeacherLine = step["teacher"];
        _showMaria = step["character"] == "Maria";
        _showKenji = step["character"] == "Kenji";
      });

      await Future.delayed(Duration(seconds: step["delay"]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Teacher dialogue
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.deepPurple[800],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _lastTeacherLine,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            const SizedBox(height: 30),

            // Character avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedOpacity(
                  opacity: _showMaria ? 1.0 : 0.2,
                  duration: const Duration(milliseconds: 500),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Text("M"),
                      ),
                      Text("Maria", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                AnimatedOpacity(
                  opacity: _showKenji ? 1.0 : 0.2,
                  duration: const Duration(milliseconds: 500),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("K"),
                      ),
                      Text("Kenji", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Y"),
                    ),
                    Text("You", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),

            const Spacer(),

            // Progress indicator
            LinearProgressIndicator(
              value: (_currentStep + 1) / _script.length,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
