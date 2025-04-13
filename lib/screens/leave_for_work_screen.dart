import 'package:flutter/material.dart';

class LeaveForWorkScreen extends StatelessWidget {
  const LeaveForWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("රැකීරක්ශා සදහා පිටත්ව යාම🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "රැකීරක්ශා සදහා පිටත්ව යාම",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "නව අවුරුද්දේ වැඩ කිරීමට පිටත්ව යාමට සුදුසු මොහොත. මේ මොහොතේ, අපගේ වැඩ මත වාසනාවක් ලබා ගැනීමේ වේලාවයි.",
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
              "- වැඩ කිරීමට පිටව යාම.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
