import 'package:flutter/material.dart';
import 'new_moon_screen.dart';
import 'bathing_old_year_screen.dart';
import 'dawn_new_year_screen.dart';
import 'punya_kalaya_screen.dart';
import 'prepare_meals_screen.dart';
import 'commence_work_screen.dart';
import 'anointing_oil_screen.dart';
import 'leave_for_work_screen.dart';
import '../utils/nekath_data.dart';
import '../widgets/nekath_card.dart';

class NekathListScreen extends StatelessWidget {
  const NekathListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),

          // ListView content
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 0, bottom: 16),
              itemCount: sampleNekathList.length,
              itemBuilder: (context, index) {
                final nekath = sampleNekathList[index];
                return NekathCard(
                  nekath: nekath,
                  onTap: () {
                    if (nekath.title == "නව සද බැලීම") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const NewMoonScreen()));
                    } else if (nekath.title == "පරණ අවුරුද්ද සදහා ස්නානය") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const BathingOldYearScreen()));
                    } else if (nekath.title == "පුණ්‍ය කාලය") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const PunyaKalayaScreen()));
                    } else if (nekath.title == "අළුත් අවුරුදු උදාව") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const DawnNewYearScreen()));
                    } else if (nekath.title == "අහාර පිසීම") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const PrepareMealsScreen()));
                    } else if (nekath.title == "වැඩ ඇල්ලීම, ගණුදෙනු කිරීම හා ආහාර අනුභවය") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const CommenceWorkScreen()));
                    } else if (nekath.title == "හිත තෙල් ගෑම") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const AnointingOilScreen()));
                    } else if (nekath.title == "රැකීරක්ශා සදහා පිටත්ව යාම") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const LeaveForWorkScreen()));
                    }
                  },
                );
              },
            ),
          ),

          // Top AppBar (fixed)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  // Circular back button with hover/tap effect
                  Material(
                    color: Colors.transparent,
                    shape: const CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      splashColor: Colors.white24,
                      onTap: () => Navigator.of(context).pop(),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Text(
                    "නැකත් පත්‍රය",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(1, 1),
                          blurRadius: 4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
