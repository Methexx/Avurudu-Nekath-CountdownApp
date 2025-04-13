import 'package:flutter/material.dart';

class CommencingWorkScreen extends StatelessWidget {
  const CommencingWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("වැඩ ඇල්ලීම🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "වැඩ ඇල්ලීම",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "නව අවුරුද්දේ මුල් වැඩ ආරම්භ කිරීමේ මොහොත. මේ මොහොතේ, අපගේ ආරම්භ කටයුතු සහ ක්‍රියාන්විතයන් සූදානම් කරයි.",
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
              "- නව අවුරුද්දේ මුල් වැඩ ආරම්භ කරන්න.",
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
