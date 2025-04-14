import 'dart:async';
import 'package:flutter/material.dart';
import 'nekath_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer _timer;
  Duration _remaining = Duration.zero;

  final DateTime targetDateTime = DateTime(2025, 4, 14, 3, 21);

  @override
  void initState() {
    super.initState();
    _updateRemainingTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _updateRemainingTime();
    });
  }

  void _updateRemainingTime() {
    final now = DateTime.now();
    final diff = targetDateTime.difference(now);
    setState(() {
      _remaining = diff.isNegative ? Duration.zero : diff;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _buildTimeBlock(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final days = _remaining.inDays.toString().padLeft(2, '0');
    final hours = (_remaining.inHours % 24).toString().padLeft(2, '0');
    final minutes = (_remaining.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_remaining.inSeconds % 60).toString().padLeft(2, '0');
    final isOver = _remaining == Duration.zero;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Logo
                Image.asset(
                  'assets/images/avurudu_logo.png',
                  height: 120,
                ),

                const SizedBox(height: 20),

                // Greetings
                const Text(
                  'සුභ අලුත් අවුරුද්දක් වේවා!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 4, color: Colors.black54, offset: Offset(1, 1))
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'புத்தாண்டு வாழ்த்துக்கள்!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 4, color: Colors.black54, offset: Offset(1, 1))
                    ],
                  ),
                ),
                const Text(
                  'Happy New Year!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 4, color: Colors.black54, offset: Offset(1, 1))
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                const Text(
                  'අලුත් අවුරුදු උදාවට තව',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 4, color: Colors.black45, offset: Offset(1, 1)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                // Countdown timer
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeBlock(days, 'දින'),
                      const SizedBox(width: 8),
                      const Text(":", style: TextStyle(fontSize: 28, color: Colors.grey)),
                      const SizedBox(width: 8),
                      _buildTimeBlock(hours, 'පැය'),
                      const SizedBox(width: 8),
                      const Text(":", style: TextStyle(fontSize: 28, color: Colors.grey)),
                      const SizedBox(width: 8),
                      _buildTimeBlock(minutes, 'මිනිත්තු'),
                      const SizedBox(width: 8),
                      const Text(":", style: TextStyle(fontSize: 28, color: Colors.grey)),
                      const SizedBox(width: 8),
                      _buildTimeBlock(seconds, 'තත්පර'),
                    ],
                  ),
                ),

                if (isOver)
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'කාලය ඉකුත්වී ඇත !',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                const Spacer(),

                // Button and copyright message
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 40, 39, 38),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NekathListScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'නැකත් පත්‍රය',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "© 2025 Developed by Methum Pathirana",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
