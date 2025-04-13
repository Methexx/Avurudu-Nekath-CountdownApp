import 'package:flutter/material.dart';

class NewMoonScreen extends StatelessWidget {
  const NewMoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("නව සද බැලීම🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "නව සද බැලීම",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "අවුරුදු සන්ධියේ නව සද බැලීමේ පුරුදුය. මෙම මොහොතේ, අපගේ ගෘහස්ථ ක්‍රියාවන් සහ ආරම්භය අලුත් අවුරුද්දට සුදානම් කිරීම සඳහා පාරිසරික මනෝභාවයක් ලබා දේ.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "මෙය සිදු කිරීම:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "- නව සඳ දිනයේ පසු, පරිසරය සුදානම් කර, ආරම්භක වැඩ මත අවුරුදු උත්සවයට සූදානම් වන්න.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            // Add more content or instructions if necessary
          ],
        ),
      ),
    );
  }
}
