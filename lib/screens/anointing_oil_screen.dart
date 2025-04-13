import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/countdown_timer.dart';

class AnointingOilScreen extends StatefulWidget {
  const AnointingOilScreen({super.key});

  @override
  State<AnointingOilScreen> createState() => _AnointingOilScreenState();
}

class _AnointingOilScreenState extends State<AnointingOilScreen> {
  late Timer _timer;
  late DateTime _now;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat('dd/MM/yyyy').format(_now);
    final timeFormatted = DateFormat('hh:mm:ss a').format(_now);

    final targetTime = DateTime(2025, 4, 16, 9, 4); // Actual Nekath time

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
                      "හිස තෙල් ගෑම",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "අප්‍රේල් මස 16 වැනි බදාද පූර්ව භාග 09.04ට පච්ච වර්ණ හෙවත් කොළ"
                    "පැහැති වස්ත්‍රාභරණයෙන් සැරසී උතුර දිශාව බලා හිසට කොහොඹ පත් ද, පයට "
                    "කොළොන් පත් ද තබා කොහොඹ පත් යුෂ නානු හා තෙල් ගා ස්නානය මැනවි.",
                    
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
                    "නැකතට තවත්",
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
