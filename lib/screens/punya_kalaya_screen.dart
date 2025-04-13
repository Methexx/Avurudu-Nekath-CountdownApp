import 'package:flutter/material.dart';

class PunyaKalayaScreen extends StatelessWidget {
  const PunyaKalayaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("පුණ්‍ය කාලය🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "පුණ්‍ය කාලය",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "මෙය පුණ්‍ය කාලය වන අතර කිසිදු කාර්යයක් සිදු නොකෙරේ. මේ මොහොතේ, අපගේ ආරම්භය සුන්දර ලෙස කල්පනා කරයි.",
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
              "- පුණ්‍ය කාලයේදී කිසිදු වැඩකිරීම අකමැත්තෙන් පිටවීම.",
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
