import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:avatar_glow/avatar_glow.dart';

class MichelAILesson1 extends StatefulWidget {
  const MichelAILesson1({super.key});

  @override
  State<MichelAILesson1> createState() => _MichelAILesson1State();
}

class _MichelAILesson1State extends State<MichelAILesson1> {
  final SpeechToText _speech = SpeechToText();
  int _currentStep = 0;
  bool _isListening = false;
  String _lastSpoken = "";
  double _mariaAccuracy = 0.9; // 90% correct
  double _kenjiAccuracy = 0.7; // 70% correct

  final List<Map<String, dynamic>> _lessonSteps = [
    {
      "teacher": "Say 'I want'... 'Yo quiero'.",
      "target": "yo quiero",
      "hint": "Imagine demanding tacos",
      "response": "🔥 Perfect. Now add 'water'—'agua'."
    },
    {
      "teacher": "Say 'Where is?'... '¿Dónde está?' like you lost your phone.",
      "target": "dónde está",
      "hint": "Panic mode!",
      "response": "💡 You just learned the MOST IMPORTANT PHRASE."
    },
    // Add other steps...
  ];

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    await _speech.initialize();
    setState(() {});
  }

  void _evaluateSpeech(String phrase) {
    final target = _lessonSteps[_currentStep]["target"].toString().toLowerCase();
    final userSaid = phrase.toLowerCase();

    setState(() {
      _isListening = false;
      _lastSpoken = userSaid;

      // Simulate Maria/Kenji responses with occasional corrections
      if (_currentStep % 2 == 0) {
        _mariaAccuracy > 0.85 
          ? _showTeacherResponse("Maria: ¡Perfecto!")
          : _showTeacherResponse("Maria: Almost! Say 'yo' not 'jo'");
      } else {
        _kenjiAccuracy > 0.75
          ? _showTeacherResponse("Kenji: ¡Sí, señor!")
          : _showTeacherResponse("Kenji: Focus on the 'dónde' part!");
      }
    });
  }

  void _showTeacherResponse(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: Colors.deepPurple,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("🔥 Michel AI - Lesson 1"),
        actions: [
          IconButton(
            icon: const Icon(Icons.volume_up),
            onPressed: () => _playTeacherAudio(),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Teacher's dialogue
            _teacherBubble(_lessonSteps[_currentStep]["teacher"]),
            
            const SizedBox(height: 30),
            
            // Student avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentAvatar("Maria", Colors.pink),
                _studentAvatar("Kenji", Colors.blue),
                _studentAvatar("You", Colors.green),
              ],
            ),
            
            const Spacer(),
            
            // Pronunciation hint
            Text(
              _lessonSteps[_currentStep]["hint"],
              style: TextStyle(
                color: Colors.yellow[200],
                fontStyle: FontStyle.italic
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Listening button
            AvatarGlow(
              animate: _isListening,
              glowColor: Colors.red,
              child: FloatingActionButton(
                onPressed: _listen,
                child: Icon(_isListening ? Icons.mic : Icons.mic_none),
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Progress indicator
            LinearProgressIndicator(
              value: (_currentStep + 1) / _lessonSteps.length,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _teacherBubble(String text) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.deepPurple[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _studentAvatar(String name, Color color) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Text(name[0]),
        ),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  void _listen() async {
    if (!_isListening) {
      setState(() => _isListening = true);
      await _speech.listen(
        onResult: (result) => _evaluateSpeech(result.recognizedWords),
        listenFor: const Duration(seconds: 5),
      );
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  void _playTeacherAudio() {
    // Implement TTS or pre-recorded Michel Thomas-style audio
  }
}
