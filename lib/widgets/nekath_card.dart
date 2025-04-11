import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/nekath.dart';

class NekathCard extends StatelessWidget {
  final Nekath nekath;
  final VoidCallback onTap;

  const NekathCard({super.key, required this.nekath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white30),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nekath.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${nekath.dateTime.year}-${nekath.dateTime.month.toString().padLeft(2, '0')}-${nekath.dateTime.day.toString().padLeft(2, '0')} "
                    "${nekath.dateTime.hour.toString().padLeft(2, '0')}:${nekath.dateTime.minute.toString().padLeft(2, '0')}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
