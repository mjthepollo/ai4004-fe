import 'package:ai4005_fe/presentation/start_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const StartScreen())));
          },
          child: SizedBox(
            height: 39 * fem,
            child: Image.asset(
              "assets/images/download-1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
