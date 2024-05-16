import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meowlingo2/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Wait for 3 seconds before navigating to the home screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 245, 165, 53),
      body: Center(
        child: Text(
          'MeowLingo',
          style: GoogleFonts.modak(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
