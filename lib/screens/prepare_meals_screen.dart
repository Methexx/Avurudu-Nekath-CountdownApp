import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/countdown_timer.dart';

class PrepareMealsScreen extends StatefulWidget {
  const PrepareMealsScreen({super.key});

  @override
  State<PrepareMealsScreen> createState() => _PrepareMealsScreenState();
}

class _PrepareMealsScreenState extends State<PrepareMealsScreen> {
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

    final targetTime = DateTime(2025, 4, 14, 4, 4); // Update as needed

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
                      "වැඩ ඇල්ලීම , ගනුදෙනු කිරීම හා ආහාර අනුභවය👷‍♀💸🍽",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "අප්‍රේල් මස 14 වැනි සදුදා පූර්වභාග 04.04ට තඹ වර්ණ වස්ත්‍රාභරණයෙන් සැරසී දකුණු දිශාව බලා ළිප් බැද ගිනි මොළව කිරි බතක් ද කැවිළි වර්ගයක්ද දී කිරි සහ විලද ද පිළියෙල කර ගැනීම මැනවි ..",
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
