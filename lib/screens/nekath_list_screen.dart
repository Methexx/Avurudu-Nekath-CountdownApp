import 'package:flutter/material.dart';
import 'new_moon_screen.dart';
import 'bathing_old_year_screen.dart';
import 'dawn_new_year_screen.dart';
import 'punya_kalaya_screen.dart';
import 'prepare_meals_screen.dart';
import 'commence_work_screen.dart';
import 'anointing_oil_screen.dart';
import 'leave_for_work_screen.dart'; // Add other imports
import '../utils/nekath_data.dart';
import '../widgets/nekath_card.dart';

class NekathListScreen extends StatelessWidget {
  const NekathListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("නැකත් පත්‍රය"),
        backgroundColor: const Color.fromARGB(0, 233, 231, 231),
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.5)),
          ListView.builder(
            itemCount: sampleNekathList.length,
            itemBuilder: (context, index) {
              final nekath = sampleNekathList[index];
              return NekathCard(
                nekath: nekath,
                onTap: () {
                  if (nekath.title == "නව සද බැලීම") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewMoonScreen()),
                    );
                  } else if (nekath.title == "පරණ අවුරුද්ද සදහා ස්නානය") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BathingOldYearScreen()),
                    );
                  } else if (nekath.title == "පුණ්‍ය කාලය") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PunyaKalayaScreen()),
                    );  
                  } else if (nekath.title == "අළුත් අවුරුදු උදාව") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DawnNewYearScreen()),
                    );
                  } else if (nekath.title == "අහාර පිසීම") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PrepareMealsScreen()),
                    );
                  } else if (nekath.title == "වැඩ ඇල්ලීම, ගණුදෙනු කිරීම හා ආහාර අනුභවය") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CommenceWorkScreen()),
                    );
                  } else if (nekath.title == "හිත තෙල් ගෑම") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnointingOilScreen()),
                    );
                  } else if (nekath.title == "රැකීරක්ශා සදහා පිටත්ව යාම") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LeaveForWorkScreen()),
                    );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
