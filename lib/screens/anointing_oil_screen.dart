import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/countdown_timer.dart';

class AnointingOilScreen extends StatelessWidget {
  const AnointingOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateFormatted = DateFormat('dd/MM/yyyy').format(now);
    final timeFormatted = DateFormat('hh:mm:ss a').format(now);

    final targetTime = DateTime(2025, 4, 14, 7, 5); // Update with actual Nekath time

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.5)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  const Center(
                    child: Text(
                      "හිත තෙල් ගෑම",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "සිංහල පසුගිය සදහසකට අනුව ශරීරය තෙල් ගාන්නා පුරුදුය. "
                    "මේ මොහොතේ, ශරීරයේ ශක්තිය සහ පරිසරය සුවඳින් පිරිමැඳීම.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text("අද දිනය", style: TextStyle(color: Colors.white70, fontSize: 16)),
                          Text(dateFormatted, style: const TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("වෙලාව", style: TextStyle(color: Colors.white70, fontSize: 16)),
                          Text(timeFormatted, style: const TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "නැකත් දක්වා වාරය",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CountdownTimer(targetTime: targetTime),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
