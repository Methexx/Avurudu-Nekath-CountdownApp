import 'package:flutter/material.dart';
import '../utils/nekath_data.dart';
import 'package:avurudu_nakath_app/screens/nekath_detail_screen.dart';
import '../widgets/nekath_card.dart';

class NekathListScreen extends StatelessWidget {
  const NekathListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("නැකත් පත්‍රය"),
        backgroundColor: const Color.fromARGB(0, 248, 245, 245),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NekathDetailScreen(nekath: nekath),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
