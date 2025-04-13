import 'package:flutter/material.dart';

class BathingOldYearScreen extends StatelessWidget {
  const BathingOldYearScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("පරණ අවුරුද්ද සදහා ස්නානය🌞"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "පරණ අවුරුද්ද සදහා ස්නානය",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "පරණ අවුරුද්ද නිමවන විට විශේෂ ස්නානයක් සිදු කරයි. එය අපගේ පරිසරය සහ ශරීරය නිසි ලෙස පිරිසිදු කිරීම සඳහා කරයි.",
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
              "- පරණ අවුරුද්දෙහි අවසන් මොහොතේ, පිරිසිදු කිරීම සඳහා ස්නානයක් පවත්වන්න.",
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
