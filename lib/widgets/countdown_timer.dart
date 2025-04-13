import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final DateTime targetTime;

  const CountdownTimer({super.key, required this.targetTime});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  Duration _remaining = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _updateRemaining();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateRemaining());
  }

  void _updateRemaining() {
    final now = DateTime.now();
    final diff = widget.targetTime.difference(now);
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
            color: Color(0xFFFF9800), // Orange color
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
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

    return Container(
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
          const Text(":", style: TextStyle(fontSize: 28, color: Color(0xFFFF9800))),
          const SizedBox(width: 8),
          _buildTimeBlock(hours, 'පැය'),
          const SizedBox(width: 8),
          const Text(":", style: TextStyle(fontSize: 28, color: Color(0xFFFF9800))),
          const SizedBox(width: 8),
          _buildTimeBlock(minutes, 'මිනිත්තු'),
          const SizedBox(width: 8),
          const Text(":", style: TextStyle(fontSize: 28, color: Color(0xFFFF9800))),
          const SizedBox(width: 8),
          _buildTimeBlock(seconds, 'තත්පර'),
        ],
      ),
    );
  }
}
