import 'package:flutter/material.dart';

class AnointingOilScreen extends StatelessWidget {
  const AnointingOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("හිත තෙල් ගෑම🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "හිත තෙල් ගෑම",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "සිංහල පසුගිය සදහසකට අනුව ශරීරය තෙල් ගාන්නා පුරුදුය. මේ මොහොතේ, ශරීරයේ ශක්තිය සහ පරිසරය සුවඳින් පිරිමැඳීම.",
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
              "- හිත තෙල් ගානයක් කිරීම.",
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
