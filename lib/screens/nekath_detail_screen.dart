import 'package:flutter/material.dart';
import '../models/nekath.dart';
import '../widgets/countdown_timer.dart';
import 'package:intl/intl.dart';

class NekathDetailScreen extends StatelessWidget {
  final Nekath nekath;

  const NekathDetailScreen({super.key, required this.nekath});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyy-MM-dd hh:mm a').format(nekath.dateTime);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nekath.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Nekath Time: $formattedDate",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "තව",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  CountdownTimer(targetTime: nekath.dateTime),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
