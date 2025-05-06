import 'package:flutter/material.dart';

void main() => runApp(const SnapRizzApp());

class SnapRizzApp extends StatelessWidget {
  const SnapRizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnapRizz AI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnapRizz AI')),
      body: const Center(child: Text('🚀 Ready to analyze dating messages!')),
    );
  }
}
