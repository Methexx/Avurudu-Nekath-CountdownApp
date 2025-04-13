import 'package:flutter/material.dart';

class PreparationOfMealsScreen extends StatelessWidget {
  const PreparationOfMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("අහාර පිසීම🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "අහාර පිසීම",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "අවුරුදු ආහාර පිසීම සදහා සුදුසු මොහොත. මේ මොහොතේ, විවිධ ආහාර සහ පාන සූදානම් කිරීම සඳහා සුදානම් වන්න.",
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
              "- අලුත් අවුරුද්දට අදාළ විශේෂ ආහාර පිසීම.",
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
