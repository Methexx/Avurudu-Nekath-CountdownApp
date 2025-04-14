import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/countdown_timer.dart';

class PunyaKalayaScreen extends StatefulWidget {
  const PunyaKalayaScreen({super.key});

  @override
  State<PunyaKalayaScreen> createState() => _PunyaKalayaScreenState();
}

class _PunyaKalayaScreenState extends State<PunyaKalayaScreen> {
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

    final targetTime = DateTime(2025, 4, 13, 08, 57); // Actual Nekath time

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
                      "පුණ්‍ය කාලය☸",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "අප්‍රේල් මස 13 වැනි ඉරිදා අපරභාග 08.57 සිට පසුදින එනම් 14 වැනි සඳුදා පූර්වභාග"
                    " 09.45 දක්වා පුණ්‍ය කාලය බැවින් අප්‍රේල් මස 13 වැනි ඉරිදා අපරභාග 08.570 පළමුව ආහාර"
                    " පාන ගෙන සියලු වැඩ අත්හැර ආගමික වතාවත්වල යෙදීම ද, පුණ්‍ය කාලයේ අපර කොටස එනම්"
                    " අප්‍රේල් මස 14 වැනි සඳුදා පූර්වභාග 03.21 සිට 14 වැනි සඳුදා පූර්වභාග 09.45 දක්වා පහත දැක්වෙන"
                    " අයුරින් ආහාර පිසීම, වැඩ ඇල්ලීම, ගනු දෙනු කිරීම හා ආහර අනුභවය ආදී නැකත් චාරිත්‍ර විධි ඉටු"
                    " කිරීම මැනවි.",
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
