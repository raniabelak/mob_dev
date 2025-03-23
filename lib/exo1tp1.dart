import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double rotationAngle = 0.0; // State variable to track rotation angle

  void rotateImage() {
    setState(() {
      rotationAngle += 1; // Increment the rotation angle (in radians)
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: rotationAngle, // Apply rotation
                child: Image.asset('assets/images/bagback.webp'),
              ),
              const SizedBox(height: 20), // Add spacing
              ElevatedButton(
                onPressed: rotateImage, // Rotate image on button press
                child: const Text('Rotate Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}