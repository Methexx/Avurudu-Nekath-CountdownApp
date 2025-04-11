import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/nekath.dart';

class NekathCard extends StatelessWidget {
  final Nekath nekath;
  final VoidCallback onTap;

  const NekathCard({super.key, required this.nekath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyy-MM-dd HH:mm').format(nekath.dateTime);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Material(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white30),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.sunny, color: Colors.amberAccent),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            nekath.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formattedDate,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    if (nekath.description != null &&
                        nekath.description!.isNotEmpty)
                      ...[
                        const SizedBox(height: 8),
                        Text(
                          nekath.description!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
