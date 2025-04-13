import 'package:flutter/material.dart';

class DawnOfTheNewYearScreen extends StatelessWidget {
  const DawnOfTheNewYearScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("අළුත් අවුරුදු උදාව🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "අළුත් අවුරුදු උදාව",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "අළුත් අවුරුද්ද පිළිගන්නා විශේෂ මොහොතයි. මෙම මොහොතේ, අපේ ගෘහස්ථ ක්‍රියා සහ අලුත් අවුරුද්දේ ආරම්භය සැලැස්වීමේදී අතිශය වැදගත් වේ.",
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
              "- අළුත් අවුරුද්ද පිළිගැනීමට අවුරුදු උත්සවය අරඹන්න.",
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
