import 'package:flutter/material.dart';
import 'package:untitled1/presentation/screen/home_screen.dart';

void main() {
  runApp(const RsaApp());
}

class RsaApp extends StatelessWidget {
  const RsaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

